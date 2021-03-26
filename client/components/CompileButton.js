import btn from '../styles/btn.module.css'
const CompileButton = () => {
    return (
        <div className={btn.combtn}>
            <button className={btn.selfBtn}>Compile/Run</button>
        </div>
    )
}

export default CompileButton