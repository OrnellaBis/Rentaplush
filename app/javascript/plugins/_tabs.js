
const updateTabs = ()=> {
    const links = document.querySelectorAll(".tab-link")
    const contents = document.querySelectorAll(".tab-content")
    links.forEach((link)=>{
        link.addEventListener("click", (e)=>{
            links.forEach((tabLink)=>{
              tabLink.classList.toggle("active", tabLink.dataset.tab === e.target.dataset.tab);  
            });
            contents.forEach((tabContent)=>{
                tabContent.classList.toggle("hidden", tabContent.dataset.tab !== e.target.dataset.tab);  
            });
        });
    });
};

export {updateTabs};