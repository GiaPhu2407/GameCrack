import Banner from '@/components/Banner'
import Card from '@/components/Card'
import Itemslide from '@/components/Itemslide'
import Navbar from '@/components/Navbar'

import React from 'react'

const page = () => {
  return (
    <div>
        <Navbar></Navbar>
        <Banner></Banner>
        <Card></Card>
        <Itemslide></Itemslide>
    </div>
  )
}

export default page