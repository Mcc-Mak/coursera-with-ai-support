// import React from "react";
// import { Grid, Box, Button } from '@mui/material';

// const CreateCourse = () => {
//     const handleClick = (item) => {
//         alert(`You clicked ${item}`);
//       };
    
//       return (
//         <Grid container spacing={2}>
//           {/* Left Vertical Grid */}
//           <Grid item xs={3}>
//             <Box
//               sx={{
//                 height: "50vh", // Full height
//                 backgroundColor: "#f5f5f5", // Light background for visibility
//                 padding: 5,
//                 display: "flex",
//                 flexDirection: "column",
//               }}
//             >
//               <Button  onClick={() => handleClick('Item 1')} sx={{ marginBottom: 1 }}>
//                 Item 1
//               </Button>
//               <Button variant="contained" onClick={() => handleClick('Item 2')} sx={{ marginBottom: 1 }}>
//                 Item 2
//               </Button>
//               <Button variant="contained" onClick={() => handleClick('Item 3')} sx={{ marginBottom: 1 }}>
//                 Item 3
//               </Button>
//               <Button variant="contained" onClick={() => handleClick('Item 4')} sx={{ marginBottom: 1 }}>
//                 Item 4
//               </Button>
//               <Button variant="contained" onClick={() => handleClick('Item 5')} sx={{ marginBottom: 1 }}>
//                 Item 5
//               </Button>
//             </Box>
//           </Grid>
//           {/* Main Content Area */}
//           <Grid item xs={9}>
//             <Box
//               sx={{
//                 height: "100vh",
//                 backgroundColor: "#ffffff",
//                 padding: 2,
//               }}
//             >
//               Main Content Area
//             </Box>
//           </Grid>
//         </Grid>
//       );
//     };
    

// export default CreateCourse;

import React, { useState } from 'react';
import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
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
import './CSS/CreateCourse.css';
const CreateCourse = () => {
  const [selected, setSelected] = useState(null);

  const handleSelect = (value) => {
    setSelected(value);
    alert(`Selected: ${value}`);
  };

  return (
    <Container  fluid className="p-0 ctn"> {/* Remove padding */}
      <Navbar bg="light" expand="lg" className="flex-column vh-100 position-fixed nb">
      
        <Nav className="flex-column">
        
          <Button variant="light" onClick={() => handleSelect('Home')} className="mb-2">
            Step 1:XXX
          </Button>
          <Button variant="light" onClick={() => handleSelect('Library')} className="mb-2">
            Step 2:XXX
          </Button>
          <Button variant="light" onClick={() => handleSelect('Users')} className="mb-2">
            Step 3:XXX
          </Button>
          <Button variant="light" onClick={() => handleSelect('Settings')} className="mb-2">
            <SettingsIcon /> Settings
          </Button>
          
          <Button variant="primary" onClick={() => handleSelect('Add')} className="mt-3">
            <FontAwesomeIcon icon={faPlus} /> Create
          </Button>
        
        </Nav>
      </Navbar>
    </Container>
  );
};

export default CreateCourse;