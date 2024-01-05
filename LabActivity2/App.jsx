import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'

import BookList from './components/Booklist'
import TodoList from './components/MovieList'
import MovieList from './components/TodoList'



function App() {
  const [count, setCount] = useState(0)

  return (
    <> 
    <TodoList />
    <MovieList />
    <BookList />
  
    
    </>
  )
}

export default App