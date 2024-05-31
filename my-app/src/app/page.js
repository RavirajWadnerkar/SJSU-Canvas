// src/app/page.js
'use client';
import { useState } from 'react';
import { useRouter } from 'next/navigation';
import Image from 'next/image';
import './globals.css';

export default function Page() {
  const [userId, setUserId] = useState('');
  const [password, setPassword] = useState('');
  const router = useRouter();

  const handleSubmit = async (event) => {
    event.preventDefault();
    // Store user_id in localStorage
    localStorage.setItem('user_id', userId);
    localStorage.setItem('password', password);

    // Attempt to authenticate user
    try {
      const response = await fetch('http://localhost:5000/get_user_data', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ user_id: userId, password: password })
      });

      if (!response.ok) {
        throw new Error('Failed to fetch');
      }

      const data = await response.json();      
      // Check if any user data is returned and verify role
      if (data.length > 0) {
        // Use the received role to redirect
        const role = data[0].role;
        // Store user_id and role (not password for security reasons) in localStorage
        localStorage.setItem('user_id', userId);
        localStorage.setItem('role', role);
        
        // Redirect to the appropriate route based on the role
        router.push(`/${role}`);
      } else {
        // Handle login failure or role mismatch
        console.error('Login failed or role mismatch');
      }
    } catch (error) {
      console.error('Error during authentication:', error);
    }
  };

  return (
    <div className="flex justify-center items-center min-h-screen bg-gray-100 px-4">
      <div className="bg-white p-6 border border-gray-300 rounded-lg shadow-md max-w-md w-full">
        <div className="flex justify-center mb-4">
          <Image
            src="/SJSU_Logo_Transparent.png"
            alt="SJSU Logo"
            width={250}
            height={125}
            layout="intrinsic"
          />
        </div>
        <form onSubmit={handleSubmit}>
          
          <div className="mb-4">
            <label htmlFor="userId" className="block text-gray-700 text-sm font-bold mb-2">
              User ID
            </label>
            <input
              type="text"
              id="userId"
              name="userId"
              value={userId}
              onChange={(e) => setUserId(e.target.value)}
              required
              className="w-full px-3 py-2 border rounded shadow appearance-none text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
              placeholder="Enter your user ID"
            />
          </div>
          <div className="mb-6">
            <label htmlFor="password" className="block text-gray-700 text-sm font-bold mb-2">
              Password
            </label>
            <input
              type="password"
              id="password"
              name="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              required
              className="w-full px-3 py-2 border rounded shadow appearance-none text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
            />
          </div>
          <button
            type="submit"
            className="w-full bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
          >
            Sign In
          </button>
        </form>
        <p className="text-center text-xs text-gray-600 mt-4">
          By signing up, I agree to the SJSU Privacy Policy and Terms of Service.
        </p>
      </div>
    </div>
  );
}
