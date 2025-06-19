import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import NavDropdown from 'react-bootstrap/NavDropdown';
import Button from 'react-bootstrap/Button';
import 'bootstrap/dist/css/bootstrap.min.css';
import './CSS/NavigationBar.css';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faPlus } from '@fortawesome/free-solid-svg-icons';

import HomeIcon from '@mui/icons-material/Home';
import LibraryBooksIcon from '@mui/icons-material/LibraryBooks';
import PeopleIcon from '@mui/icons-material/People';
import SettingsIcon from '@mui/icons-material/Settings';
import LogoutIcon from '@mui/icons-material/Logout';
import NotificationsIcon from '@mui/icons-material/Notifications';

import ToggleButton from '@mui/material/ToggleButton';
import ToggleButtonGroup from '@mui/material/ToggleButtonGroup';
import React, {useState} from 'react';
import { Link } from 'react-router-dom'; 


function NavigationBar() {
  const handleLogout = () => {
    // Add logout logic here (e.g., clear tokens, redirect)
    alert("Logged out!");
    window.location.href="http://192.168.68.130:8899/log-out";
};
const [view, setView] = useState('english');
const handleLanguageChange = (e) => {
  if (e !== null) {
  console.log(e.target.value);
  setView(e.target.value);
  }
};


  return ( 
    <Navbar expand="lg" className="bg-body-tertiary">
      
      <Container>

      <Navbar.Brand  as={Link} to="/" >Courseify</Navbar.Brand>
            <Navbar.Toggle aria-controls="basic-navbar-nav" />
            <Navbar.Collapse id="basic-navbar-nav">
                <Nav className="mr-auto">
                    <Nav.Link href="#home" ><HomeIcon style={{ marginRight: '5px' }} />Home</Nav.Link>
                    <Nav.Link href="#about">About Us</Nav.Link>
                    <NavDropdown title={
                    <>
                      <LibraryBooksIcon style={{ marginRight: '5px' }} />
                      Courses
                    </>
                  }  
                    id="basic-nav-dropdown"><LibraryBooksIcon style={{ marginRight: '5px' }} />
                    <NavDropdown.Item as={Link} to="/createCourse"><FontAwesomeIcon icon={faPlus} className="me-2" />Create</NavDropdown.Item>
                    <NavDropdown.Item href="#action/3.1">All Courses</NavDropdown.Item>
                    <NavDropdown.Item href="#action/3.2">My Courses</NavDropdown.Item>
                    <NavDropdown.Item href="#action/3.3">Certificates</NavDropdown.Item>
                    {/* <NavDropdown.Divider />
                    <NavDropdown.Item href="#action/3.4">
                      Separated link
                    </NavDropdown.Item>  */}
                  </NavDropdown>
                  <Nav.Link href="#services"><PeopleIcon style={{ marginRight: '5px' }} />Community</Nav.Link>
                  <Nav.Link href="#services"> Upgrade Membership</Nav.Link>
                  <NavDropdown title="Help" id="basic-nav-dropdown">
                    <NavDropdown.Item href="#action/3.1">Support Hotline</NavDropdown.Item>
                  </NavDropdown>
                </Nav>
                <Nav className="ms-auto">
                <ToggleButtonGroup
                color="primary"
                value={view}
                exclusive
                onClick={handleLanguageChange}
               
                aria-label="Languages"
              >
                
                <ToggleButton value="english" aria-label="english">English</ToggleButton>
                <ToggleButton value="chinese" aria-label="chinese">中文</ToggleButton>
              </ToggleButtonGroup>
                <Button className="ms-auto settings-button" href="#services"><NotificationsIcon style={{ marginRight: '5px' }} /></Button>
                <Button className="ms-auto settings-button" href="#services"><SettingsIcon style={{ marginRight: '5px' }} /></Button>
                <Button className="ms-auto" variant="danger" onClick={handleLogout}><LogoutIcon style={{ marginRight: '5px' }} /></Button>
                </Nav>
            </Navbar.Collapse>
      
      </Container>
    </Navbar>
  );
}

export default NavigationBar;