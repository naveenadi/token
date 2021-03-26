import Nav from '../components/Nav'
import EditorContainer from '../components/EditorContainer'
import InputSection from '../components/InputSection'
import OutputSection from '../components/OutputSection'
import CompileButton from '../components/CompileButton'
import LangSelect from '../components/langSelect'
export default function Home() {
  return (
    <>
        <Nav/>
        <LangSelect/>
        <EditorContainer/>
        <InputSection/>
        <OutputSection/>
        <CompileButton/>
    </>
  )
}
