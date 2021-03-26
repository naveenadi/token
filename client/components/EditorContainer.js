import Editor from "@monaco-editor/react";
import EditorStyle from '../styles/editor.module.css'

const EditorContainer = () => {
    return (
        <div className={EditorStyle.editorContainer}>
            <Editor 
                className={EditorStyle.editorArea}
                theme="vs-dark"
                defaultLanguage="javascript"
                defaultValue="// Add Codes"
            />
        </div>
    );
};

export default EditorContainer;