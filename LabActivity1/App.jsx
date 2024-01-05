import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import Hello from './components/hello'
import Welcome from './components/welcome'
import TodoList from './components/TodoList'
import BookList from './components/BookList'
import MovieList from './components/MovieList'



function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <Hello />
      <Welcome />
      <TodoList />
      <MovieList />
      <BookList />
    
    </>
  )
}

export default App
