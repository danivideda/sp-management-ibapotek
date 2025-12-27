import { ReactNode, useEffect, useState } from "react";
import { dbsqlc } from "../../wailsjs/go/models";
import { DObat } from "../../wailsjs/go/main/App";

function LowStock() {
  const [obatList, setObatList] = useState<dbsqlc.GetMinStockRow[]>([]);

  useEffect(() => {
    console.log("Does this run?");
    setTimeout(() => {
      DObat().then((result: dbsqlc.GetMinStockRow[]) => setObatList(result));
    });
  }, []);

  const listItems = obatList.map((item, idx) => (
    <tr
      key={idx}
      className={"border-y border-gray-100 hover:bg-gray-100 odd:bg-gray-50"}
    >
      <Item>
        <div className="text-gray-500">{item.Kode}</div>
      </Item>
      <Item>
        <div className="font-semibold">{item.Nama.String}</div>
      </Item>
      <Item>
        <div className="text-red-800 font-mono">{item.DStok}</div>
      </Item>
      <Item>
        <div className="text-gray-800 font-mono">{item.DStokMin}</div>{" "}
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
    <>
      <h1 className="sticky top-0 h-7 text-xl font-semibold text-gray-700 backdrop-blur-sm bg-white/80">
        <div className="container mx-auto">My Obat list</div>
      </h1>
      <div className="container mx-auto">
        <table className="w-full">
          <thead className="sticky top-[1.75rem] backdrop-blur-sm bg-white/80">
            <tr>
              <Th>KODE</Th>
              <Th>NAMA</Th>
              <Th>STOK</Th>
              <Th>MIN. STOK</Th>
              <Th>STATUS</Th>
            </tr>
          </thead>
          <tbody>{listItems}</tbody>
        </table>
      </div>
    </>
  );
}

// Components
function Item({ children }: { children: ReactNode }) {
  return <td className="border-x border-gray-200 p-1">{children}</td>;
}

function Th({ children }: { children: ReactNode }) {
  return <th className="p-1 bg-green-600 text-white text-left">{children}</th>;
}

export default LowStock;
