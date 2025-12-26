import { ReactNode, useEffect, useState } from "react";
import { dbsqlc } from "../../wailsjs/go/models";
import { DObat } from "../../wailsjs/go/main/App";

function LowStock() {
  const [obatList, setObatList] = useState<dbsqlc.GetMinStockRow[]>([]);

  useEffect(() => {
    console.log("Does this run?");
    setTimeout(() => {
      DObat().then((result: dbsqlc.GetMinStockRow[]) => setObatList(result));
    }, 2000);
  }, []);

  const listItems = obatList.map((item, idx) => (
    <tr
      key={idx}
      className={"border-y border-gray-100 hover:bg-gray-100 odd:bg-gray-50"}
    >
      <Item>
        <div>{item.Kode}</div>
      </Item>
      <Item>
        <div>{item.Nama.String}</div>
      </Item>
      <Item>
        <div>{item.DStok}</div>
      </Item>
      <Item>
        <div>{item.DStokMin}</div>{" "}
      </Item>
      <Item>
        <div className="flex justify-center w-full">
          <span className="mr-2">Belum SP</span>
          <button className="bg-green-50 border-2 border-green-700 rounded-xl px-1">
            +
          </button>
        </div>
      </Item>
    </tr>
  ));

  return (
    <div className="container mx-auto">
      <h1 className="text-xl font-bold">My Obat list</h1>
      <table className="w-full">
        <thead className="sticky top-0 bg-green-600 text-white text-left">
          <tr>
            <th className="p-1">KODE</th>
            <th className="p-1">NAMA</th>
            <th className="p-1">STOK</th>
            <th className="p-1">MIN. STOK</th>
            <th className="p-1">STATUS</th>
          </tr>
        </thead>
        <tbody>{listItems}</tbody>
      </table>
    </div>
  );
}

// Components
function Item({ children }: { children: ReactNode }) {
  return <td className="border-x border-gray-200 p-1">{children}</td>;
}

export default LowStock;
