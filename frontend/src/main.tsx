import React from "react";
import { createRoot } from "react-dom/client";
import "./style.css";
import {
  BrowserRouter,
  HashRouter,
  Navigate,
  Route,
  Routes,
} from "react-router";
import LowStock from "./pages/LowStock";
import WaitingList from "./pages/WaitingList";
import NavBar from "./layout/NavBar";

const container = document.getElementById("root");

const root = createRoot(container!);

root.render(
  <React.StrictMode>
    <HashRouter>
      <Routes>
        <Route index element={<Navigate to="lowstock" replace />} />
        <Route element={<NavBar />}>
          <Route path="lowstock" element={<LowStock />} />
          <Route path="waitinglist" element={<WaitingList />} />
        </Route>
      </Routes>
    </HashRouter>
  </React.StrictMode>
);
