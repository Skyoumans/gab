import React from 'react';
import { Link } from 'react-router-dom'

import logo from '../pictures/GAB-Banner-01.png';


const HomePage = () => {
  return (
    <div>
      <img src={logo} alt='logo'/>
      <h1>Hello from the Home Page</h1>
    </div>
  );
};

export default HomePage;