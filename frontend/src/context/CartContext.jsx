import { createContext, useContext, useEffect, useState, useCallback } from 'react';
import { cartApi } from '../api/api';
import { useAuth } from './AuthContext';

const CartContext = createContext(null);

export function CartProvider({ children }) {
  const { user } = useAuth();
  const [items, setItems] = useState([]);

  const refreshCart = useCallback(async () => {
    if (!user) {
      setItems([]);
      return;
    }
    try {
      const data = await cartApi.getCart();
      setItems(data);
    } catch (err) {
      console.error('Could not load cart', err);
    }
  }, [user]);

  useEffect(() => {
    refreshCart();
  }, [refreshCart]);

  async function addItem(menuItem, quantity = 1) {
    await cartApi.upsertItem(menuItem.id, quantity);
    await refreshCart();
  }

  async function updateQuantity(menuItemId, quantity) {
    if (quantity < 1) {
      await removeItem(menuItemId);
      return;
    }
    await cartApi.upsertItem(menuItemId, quantity);
    await refreshCart();
  }

  async function removeItem(menuItemId) {
    await cartApi.removeItem(menuItemId);
    await refreshCart();
  }

  const totalCount = items.reduce((sum, item) => sum + item.quantity, 0);
  const totalPrice = items.reduce((sum, item) => sum + item.quantity * item.price, 0);

  return (
    <CartContext.Provider
      value={{ items, addItem, updateQuantity, removeItem, refreshCart, totalCount, totalPrice }}
    >
      {children}
    </CartContext.Provider>
  );
}

export function useCart() {
  return useContext(CartContext);
}
