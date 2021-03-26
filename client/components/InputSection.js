import InputStyle from '../styles/input.module.css'
const InputSection = () => {
    return (
        <div className={InputStyle.container}>
            <div className={InputStyle.heading}>
                <p className={InputStyle.headtitle}>Input Section</p>
            </div><hr/>
            <div className={InputStyle.inputfield} contentEditable={true} suppressContentEditableWarning={true}>Write Input Data...</div>
        </div>
    )
}

export default InputSection;
