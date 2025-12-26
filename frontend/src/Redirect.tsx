import { useEffect } from "react";
import { useNavigate } from "react-router";

function Redirect() {
  let navigate = useNavigate();
  useEffect(() => {
    navigate("/lowstock");
  }, []);
  return <div>Redirect</div>;
}

export default Redirect;
