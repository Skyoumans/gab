import React from 'react';
import { Link } from 'react-router-dom'

const NavBar = () => {
  return (
    <div>
      <Link to='/'>Home</Link>
      <Link to='/contacts'>Contacts</Link>
      <Link to='/organizations'>Organizations</Link>
      <Link to='/station_groups'>Station Groups</Link>
      <Link to='/stations'>Stations</Link>
      <Link to='/invoices'>Invoices</Link>
      <Link to='/pep'>PEP</Link>
      <Link to='/products'>Products</Link>
    </div>
  );
};

export default NavBar;