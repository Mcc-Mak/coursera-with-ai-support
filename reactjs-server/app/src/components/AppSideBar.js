import React, { useState } from 'react';
import {
    Nav,
    // NavDropdown
    Collapse,
    ListGroup,
    Image
} from 'react-bootstrap';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import {
  faCirclePlus,
} from '@fortawesome/free-solid-svg-icons';

function AppSideBar() {
    const mainMenu = {
        style: {
            cursor: "pointer",
            marginLeft: "20px"
        }
    };
    const subMenu = {
        style: {
            cursor: "pointer" ,
            textAlign: "start",
            marginLeft: "40px"
        }
    };
    const handleOnMouseOver = (e) => {
        e.target.classList.add("active");
    };
    const [open, setOpen] = useState(false);
    return (
        <div>
            <div>Mario</div>
            <Image src="/static/img/Mario.JPG" width="30%" height="30%" style={{paddingTop:"10px",paddingBottom:"10px"}} alt="Profile Picture" roundedCircle />
            <hr />
            <Nav
                aria-controls="example-collapse-text"
                aria-expanded={open}
            >
                <ListGroup>
                    <ListGroup.Item variant="primary" style={mainMenu.style}
                        onMouseOver={handleOnMouseOver}
                        onMouseOut={(e) => {
                            if (!open) {
                                e.target.classList.remove("active");
                            }
                        }}
                        onClick={() => setOpen(!open)}>
                        Courses
                    </ListGroup.Item>
                </ListGroup>
            </Nav>
            <Collapse in={open}>
                <div id="example-collapse-text">
                    <hr/>
                    <ListGroup>
                        <ListGroup.Item variant="info" action  style={subMenu.style}>
                            &nbsp;&nbsp;All
                        </ListGroup.Item>
                        <ListGroup.Item variant="info" action  style={subMenu.style}>
                            &nbsp;&nbsp;My Courses
                        </ListGroup.Item>
                        <ListGroup.Item variant="info" action  style={subMenu.style}>
                            &nbsp;&nbsp;Drafts
                        </ListGroup.Item>
                        <ListGroup.Item variant="info" action  style={subMenu.style}>
                            &nbsp;&nbsp;Certificates
                        </ListGroup.Item>
                        <ListGroup.Item variant="info" action  style={subMenu.style}>
                            <span>&nbsp;&nbsp;</span>
                            <FontAwesomeIcon icon={faCirclePlus} />
                            <span>&nbsp;&nbsp;Create</span>
                        </ListGroup.Item>
                    </ListGroup>
                </div>
            </Collapse>
        </div>
    );
}

export default AppSideBar;