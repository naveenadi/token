import navStyle from '../styles/nav.module.css'
import Link from 'next/link'
import Image from 'next/image'
const Nav = () => {
    return (
        <div className={navStyle.container}>
            <div className={navStyle.titleContainer}>
                <h3 className={navStyle.headTitle}>TOKEN</h3>
                <Link className={navStyle.gitLink} href="https://github.com/prakashaditya13/token"><a target="_blank"><span className={navStyle.gitLogo}><Image src="/github-11-64.png" width={30} height={30}/></span></a></Link>
            </div>
        </div>
    );
};

export default Nav;