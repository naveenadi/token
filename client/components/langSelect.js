import SelectionStyle from '../styles/lang.module.css'
const LangSelect = () => {
    return (
        <div className={SelectionStyle.selectionContainer}>
            <select>
                <option>c</option>
                <option>c++</option>
                <option>java</option>
                <option>python3</option>
            </select>
        </div>
    )
}

export default LangSelect;