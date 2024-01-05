import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import Hello from './components/hello'
import Welcome from './components/welcome'



function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <Hello />
      <Welcome />
    
    
    </>
  )
}

export default App
