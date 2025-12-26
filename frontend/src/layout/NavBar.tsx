import { NavLink, Outlet } from "react-router";

function NavBar() {
  return (
    <div>
      <h1 className="mb-3 text-3xl">The navigation menu</h1>
      <div className="flex flex-row w-full">
        <NavLink to="lowstock">Obat List</NavLink>
        <NavLink to="waitinglist">Waiting List</NavLink>
      </div>
      <Outlet />
    </div>
  );
}

export default NavBar;
