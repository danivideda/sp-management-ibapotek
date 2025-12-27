import React from "react";
import { NavLink, Outlet } from "react-router";

function NavBar() {
  return (
    <>
      <div className="flex mb-3 py-2 px-5 flex-row justify-center w-full shadow-md">
        <h1 className="pl-2 text-xl w-full italic">iB Apotek SP Management</h1>
        <div className="flex justify-start space-x-2 w-full">
          <NavItem to="lowstock">Obat List</NavItem>
          <NavItem to="waitinglist">Waiting List</NavItem>
          <NavItem to="sphistory">SP History</NavItem>
        </div>
      </div>
      <Outlet />
    </>
  );
}

function NavItem({ children, to }: { children: React.ReactNode; to: string }) {
  return (
    <NavLink to={to}>
      {({ isActive }) => (
        <div
          className={
            "p-1 border-b-4 font-semibold" +
            " " +
            (isActive
              ? "border-green-600 text-black"
              : "hover:border-green-600/50")
          }
        >
          {children}
        </div>
      )}
    </NavLink>
  );
}

export default NavBar;
