import Banner from "@/components/Banner";
import Card from "@/components/Card";
import Itemslide from "@/components/Itemslide";
import Navbar from "@/components/Navbar";
import Image from "next/image";

export default function Home() {
  return (
    <main>
     <Navbar></Navbar>
     <Banner></Banner>
     <Card></Card>
     <Itemslide></Itemslide>
    </main>
  );
}
