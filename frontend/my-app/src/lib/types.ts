export type Section = {
    id:number;
    sectionOrder:number;
    title:string;
    courseID:number;
}

export type CourseContent = {
    id:number;
    title:string;
    description:string;
    videoLink:string;
    createDate:Date;
}

export type SectionDetail = {
    sectionInfo:Section;
    lessons:CourseContent[];
}

export type Course = {
    id:number;
    name: string;
    price: number;
    description: string;
    durations: string;
    instructorID: number;
    instructorName: string;
}

export type CourseAllInfo = {
    courseInfo:Course;
    sections:SectionDetail;
}

export type CourseCreate ={
    name:string;
    description:string;
    durations:string;
    price:number;
}

export type SectionMinDetail = {
    sectionName:string;
    courseContentNames:string[];
}

export type CourseMinDetail = {
    courseInfo:Course;
    sectionList:SectionMinDetail[];
}
