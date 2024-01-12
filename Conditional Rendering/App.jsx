import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import Hello from './components/hello'
import Welcome from './components/welcome'
import TodoList from './components/TodoList'
import BookList from './components/BookList'
import MovieList from './components/MovieList'
import Greeting from './components/week3/Conditional-Demo-1/greeting'
import ShinyButton from './components/week3/Conditional-Demo-1/shinybutton'
import Rainy from './components/week3/Conditional-Demo-2/Rainy'
import Rainyy from './components/week3/Conditional-Demo-3/Rainyy'
import RainOrShine from './components/week3/Conditional-Demo-4/RainOrShine'





function App() {
  const [count, setCount] = useState(0)

  return (
    <>
    <div>
      <h1>Demo 1</h1>
      <Greeting />
      <ShinyButton />
    </div>

    <div>
      <h1>Demo 2</h1>
      <Rainy />
    </div>

    <div>
      <h1>Demo 3</h1>
      <Rainyy />
    </div>

    <div>
      <h1>Demo 4</h1>
      <RainOrShine />
    </div>
    </>
  )
  
  
}

export default App
