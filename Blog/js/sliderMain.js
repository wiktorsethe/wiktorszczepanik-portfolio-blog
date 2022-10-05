const slideContainer = document.getElementById('content');
const slide = document.getElementById('slide-container');
const nextBtn = document.getElementById('next-btn');
const prevBtn = document.getElementById('prev-btn'); 

let slides = document.querySelectorAll('.slide');
let index = 1;
let slideId;

const firstClone = slides[0].cloneNode(true);
const lastClone = slides[slides.length - 1].cloneNode(true);

firstClone.id = 'first-clone'
lastClone.id = 'last-clone'

slide.append(firstClone);
slide.prepend(lastClone);

const slideWidth = slides[index].clientWidth;

slide.style.transform = `translateX(${-slideWidth * index}px)`;

const startSlide = ()=>{
    slideId = setInterval(() =>{
        moveToNextSlide();
    }, 5000);
};

const getSlides = () => document.querySelectorAll('.slide');

slide.addEventListener('transitionend', ()=>{
    slides = getSlides();
    if(slides[index].id === firstClone.id){
        slide.style.transition = 'none';
        index = 1;
        slide.style.transform = `translateX(${-slideWidth * index}px)`;
    }
    if(slides[index].id === lastClone.id){
        slide.style.transition = 'none';
        index = slides.length - 2;
        slide.style.transform = `translateX(${-slideWidth * index}px)`;
    }
});

const moveToNextSlide = () =>{
    slides = getSlides();
    if(index >= slides.length - 1) return;
    index++;
    slide.style.transform = `translateX(${-slideWidth * index}px)`;
    slide.style.transition = '3s';
};
const moveToPrevSlide = () =>{
    if(index <= 0) return;
    index--;
    slide.style.transform = `translateX(${-slideWidth * index}px)`;
    slide.style.transition = '3s';
}
nextBtn.addEventListener('click', moveToNextSlide);
prevBtn.addEventListener('click', moveToPrevSlide);

slideContainer.addEventListener('mouseenter', () =>{
    clearInterval(slideId);
});

slideContainer.addEventListener('mouseleave', startSlide);


startSlide();

