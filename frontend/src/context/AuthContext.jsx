import { createContext, useContext, useState } from 'react';
import { authApi } from '../api/api';

const AuthContext = createContext(null);

export function AuthProvider({ children }) {
  const [user, setUser] = useState(() => {
    const saved = localStorage.getItem('user');
    return saved ? JSON.parse(saved) : null;
  });

  function persist(token, user) {
    localStorage.setItem('token', token);
    localStorage.setItem('user', JSON.stringify(user));
    setUser(user);
  }

  async function register(name, email, password) {
    const data = await authApi.register(name, email, password);
    persist(data.token, data.user);
  }

  async function login(email, password) {
    const data = await authApi.login(email, password);
    persist(data.token, data.user);
  }

  function logout() {
    localStorage.removeItem('token');
    localStorage.removeItem('user');
    setUser(null);
  }

  return (
    <AuthContext.Provider value={{ user, register, login, logout }}>
      {children}
    </AuthContext.Provider>
  );
}

export function useAuth() {
  return useContext(AuthContext);
}
