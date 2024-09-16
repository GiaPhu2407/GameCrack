import Banner from '@/components/Banner'
import Card from '@/components/Card'
import Itemslide from '@/components/Itemslide'
import Navbar from '@/components/Navbar'
import CozeAI from '@/components/CozeAI'

import React from 'react'

const page = () => {
  return (
    <div>
        <Navbar></Navbar>
        <Banner></Banner>
        <Card></Card>
        <Itemslide></Itemslide>
        <CozeAI></CozeAI>
    
    </div>
  )
}

export default page