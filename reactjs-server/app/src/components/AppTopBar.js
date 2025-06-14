import {
    Container,
    Nav,
    Navbar,
    NavDropdown,
    Image
} from 'react-bootstrap';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import {
  faCirclePlus,
  faChalkboardUser,
  faComment,
  // faGear
} from '@fortawesome/free-solid-svg-icons';

function AppTopBar() {
  const logo = {
    className: ["fs-3", "m-0", "p-0", "fw-bold", "d-flex", "justify-content-start"]
  };
  const toolbarIcon = {
    style: {
      fontSize: "20px",
      paddingLeft: "20px",
      // color: "green"
    }
  };
  return (
    <Navbar expand="lg" className="alert alert-info">
      <Container>
        <Navbar.Brand href="#home" className={logo.className}>
          <Image src="/static/img/Courseify.JPEG" width="5%" height="5%" style={{paddingTop:"10px",paddingBottom:"10px"}} alt="Profile Picture" rounded />
        </Navbar.Brand>
        <Navbar.Toggle aria-controls="basic-navbar-nav" />
        <div className={["d-flex","justify-content-end"]}>
          <Navbar.Collapse id="basic-navbar-nav" className="d-flex justify-content-end">
            <Nav className="d-flex align-items-center me-auto">
              <Nav.Link href="#home">
                <FontAwesomeIcon icon={faCirclePlus} style={toolbarIcon.style} />
              </Nav.Link>
              <Nav.Link href="#link">
                <FontAwesomeIcon icon={faChalkboardUser} style={toolbarIcon.style} />
              </Nav.Link>
              <Nav.Link href="#link">
                <FontAwesomeIcon icon={faComment} style={toolbarIcon.style} />
              </Nav.Link>
              <NavDropdown title="" id="basic-nav-dropdown" style={toolbarIcon.style}>
                <NavDropdown.Item href="#" className={["text-success"]}>Setting</NavDropdown.Item>
                <NavDropdown.Divider />
                <NavDropdown.Item href="http://192.168.68.130:8899/log-out" className={["text-danger"]}>
                  Logout
                </NavDropdown.Item>
              </NavDropdown>
            </Nav>
          </Navbar.Collapse>
        </div>
      </Container>
    </Navbar>
  );
}

export default AppTopBar;