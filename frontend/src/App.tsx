import { useEffect, useState } from "react";
import { DObat } from "../wailsjs/go/main/App";
import { dbsqlc } from "../wailsjs/go/models";

function App() {
  const [obatList, setObatList] = useState<dbsqlc.GetMinStockRow[]>([]);

  useEffect(() => {
    DObat().then((result: dbsqlc.GetMinStockRow[]) => setObatList(result));
  }, []);

  const listItems = obatList.map((item, idx) => (
    <tr className={"hover:bg-gray-400 " + (idx % 2 == 0 ? "bg-gray-200" : "")}>
      <td>{item.Kode}</td>
      <td>{item.Nama.String}</td>
      <td>{item.DStok}</td>
      <td>{item.DStokMin}</td>
    </tr>
  ));

  return (
    <div className="container mx-auto px-4">
      <h1 className="text-xl font-bold">My Obat list</h1>
      <table className="w-full">
        <thead className="sticky top-0 bg-gray-600 text-white text-left">
          <tr>
            <th>KODE</th>
            <th>NAMA</th>
            <th>STOK</th>
            <th>MIN. STOK</th>
          </tr>
        </thead>
        <tbody>{listItems}</tbody>
      </table>
    </div>
  );
}

export default App;
