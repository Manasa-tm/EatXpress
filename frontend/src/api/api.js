const API_URL = import.meta.env.VITE_API_URL || 'http://localhost:5000/api';

async function request(path, options = {}) {
  const token = localStorage.getItem('token');
  const res = await fetch(`${API_URL}${path}`, {
    ...options,
    headers: {
      'Content-Type': 'application/json',
      ...(token ? { Authorization: `Bearer ${token}` } : {}),
      ...options.headers,
    },
  });
  const data = await res.json().catch(() => ({}));
  if (!res.ok) {
    throw new Error(data.message || 'Something went wrong');
  }
  return data;
}

export const authApi = {
  register: (name, email, password) =>
    request('/auth/register', { method: 'POST', body: JSON.stringify({ name, email, password }) }),
  login: (email, password) =>
    request('/auth/login', { method: 'POST', body: JSON.stringify({ email, password }) }),
};

export const menuApi = {
  getRestaurants: () => request('/restaurants'),
  getMenu: (slug) => request(`/restaurants/${slug}/menu`),
};

export const cartApi = {
  getCart: () => request('/cart'),
  upsertItem: (menuItemId, quantity) =>
    request('/cart', { method: 'POST', body: JSON.stringify({ menuItemId, quantity }) }),
  removeItem: (menuItemId) => request(`/cart/${menuItemId}`, { method: 'DELETE' }),
};
