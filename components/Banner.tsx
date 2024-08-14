import React, { useEffect, useState } from 'react'
import Image from 'next/image';
const Banner = () => {
   
  return (
    <div className="carousel w-full rounded-xl">
    <div id="slide1" className="carousel-item relative w-full">
      <Image
        src="https://images.unsplash.com/photo-1497436072909-60f360e1d4b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2560&q=80"
        alt="image 1"
        width={1000}
        height={1000}
        className="w-full object-cover"
      />
      <div className="absolute inset-0 flex items-center justify-center bg-black/75">
        <div className="text-center text-white">
          <h1 className="mb-4 text-3xl md:text-4xl lg:text-5xl">The Beauty of Nature</h1>
          <p className="mb-12 opacity-80">
            It is not so much for its beauty that the forest makes a claim
            upon mens hearts, as for that subtle something, that quality of
            air that emanation from old trees, that so wonderfully changes and
            renews a weary spirit.
          </p>
          <div className="flex justify-center gap-2">
            <button className="btn btn-primary">Explore</button>
            <button className="btn btn-outline">Gallery</button>
          </div>
        </div>
      </div>
    </div>
    <div id="slide2" className="carousel-item relative w-full">
      <Image
        src="https://images.unsplash.com/photo-1493246507139-91e8fad9978e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80"
        alt="image 2"
        width={1000}
        height={1000}
        objectFit='cover'
        className="w-full object-cover"
      />
      <div className="absolute inset-0 flex items-center bg-black/75 pl-12 md:pl-20 lg:pl-32">
        <div className="text-white">
          <h1 className="mb-4 text-3xl md:text-4xl lg:text-5xl">The Beauty of Nature</h1>
          <p className="mb-12 opacity-80">
            It is not so much for its beauty that the forest makes a claim
            upon mens hearts, as for that subtle something, that quality of
            air that emanation from old trees, that so wonderfully changes and
            renews a weary spirit.
          </p>
          <div className="flex gap-2">
            <button className="btn btn-primary">Explore</button>
            <button className="btn btn-outline">Gallery</button>
          </div>
        </div>
      </div>
    </div>
    <div id="slide3" className="carousel-item relative w-full">
      <Image
        src="https://images.unsplash.com/photo-1518623489648-a173ef7824f3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2762&q=80"
        alt="image 3"
        height={1000}
        width={1000}
        objectFit='cover'
        className="w-full object-cover"
      />
      <div className="absolute inset-0 flex items-center bg-black/75 pb-12 pl-12 md:pb-20 md:pl-20 lg:pb-32 lg:pl-32">
        <div className="text-white">
          <h1 className="mb-4 text-3xl md:text-4xl lg:text-5xl">The Beauty of Nature</h1>
          <p className="mb-12 opacity-80">
            It is not so much for its beauty that the forest makes a claim
            upon mens hearts, as for that subtle something, that quality of
            air that emanation from old trees, that so wonderfully changes and
            renews a weary spirit.
          </p>
          <div className="flex gap-2">
            <button className="btn btn-primary">Explore</button>
            <button className="btn btn-outline">Gallery</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  )
}

export default Banner