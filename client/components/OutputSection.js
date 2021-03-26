import OutputStyle from '../styles/output.module.css'
const OutputSection = () => {
    return (
        <div className={OutputStyle.container}>
            <div className={OutputStyle.heading}>
                <p className={OutputStyle.headtitle}>Output Section</p>
            </div><hr/>
            <div className={OutputStyle.outputfield}>Result...</div>
        </div>
    )
}

export default OutputSection;
