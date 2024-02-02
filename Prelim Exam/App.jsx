import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import PrelimExam from './components/BibleQuiz'





function App() {
  const [count, setCount] = useState(0)

  return (
    <>
    <div>
      <PrelimExam />
    </div>

    </>
  )
  
  
}

export default App
