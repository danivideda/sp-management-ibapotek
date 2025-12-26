import { Outlet } from "react-router";

function App() {
  return (
    <div>
      <h1 className="text-3xl text-red-300 font-bold">
        iB Apotek SP Management
      </h1>
      <Outlet />
    </div>
  );
}

export default App;
