import { type } from "os";
export type MonthlyData = {
  year?: number | null;
  firstMonth: number;
  secondMonth: number;
  thirdMonth: number;
  fourthMonth: number;
  fifthMonth: number;
  sixthMonth: number;
  seventhMonth: number;
  eighthMonth: number;
  ninthMonth: number;
  tenthMonth: number;
  eleventhMonth: number;
  twelfthMonth: number;
}
export type InstructorInfo = {
  id: number;
  fullName: string;
  specialization:string;
  phone:number;
  avatar:string;
  paypalEmail:string;
};
export type InstructorSalary = {
  instructorInfo: InstructorInfo;
  monthlySalary: number;
  courseSelling: number;
  totalMoneySelling: number
}
export type GradingExam = {
  examID:number;
  score:string;
  comment:string;
}
export type GetExamAllInfo = {
  examInfo: ExamStatusInfo;
  customerInfo:Customer
  courseContent:CourseContent;
  course:Course
};
export type ReviewsPaginationForGrading = {
  content: ExamStatusInfo[];
  pageable: Pageable;
  totalElements: number;
  totalPages: number;
  last: boolean;
  numberOfElements: number;
  first: boolean;
  size: number;
  number: number;
  sort: {
    unsorted: boolean;
    sorted: boolean;
    empty: boolean;
  };
  empty: boolean;
};
export type ExamStatusInfo = {
  id:number;
  score:string;
  artLink:string;
  examStatus:string;
  comment:string;
}

export type Section = {
    id:number;
    sectionOrder:number;
    title:string;
}

export type CourseContent = {
    id:number;
    title:string;
    description:string;
    videoLink:string;
    createDate:Date;
    courseType:string;
}

export type SectionDetail = {
    sectionInfo:Section;
    lessons:CourseContent[];
}

export type EditCourse = {
    id:number;
    name: string;
    price: number;
    description: string;
    durations: string;
}

export type EditCourseContent = {
    id:number;
    title:string;
    description:string;
    videoLink:string;
}

export type Course = {
    id:number;
    name: string;
    price: number;
    description: string;
    durations: string;
    thumbnail_path:string;
    instructorID: number;
    instructorName: string;
}

export type CourseAllInfo = {
    courseInfo:Course;
    sections:SectionDetail[];
}

export type CourseCreate ={
    name:string;
    description:string;
    durations:string;
    price:number;
    thumbnail_path:string;
}

export type SectionMinDetail = {
    sectionName:string;
    courseContentNames:string[];
}

export type CourseMinDetail = {
    courseInfo:Course;
    sectionList:SectionMinDetail[];
}

export type SectionCreate = {
    courseID:number;
    sectionInfo:Section;
}

export type CourseContentCreate = {
    sectionID:number;
    courseContent:CourseContent;
}

type Pageable = {
    pageNumber: number;
    pageSize: number;
    sort: {
      unsorted: boolean;
      sorted: boolean;
      empty: boolean;
    };
    offset: number;
    unpaged: boolean;
    paged: boolean;
  };

  type Account = {
    email: string;
    role: string;
    createDate: string;
    isActive: boolean;
  };

type AccountPagination = {
    content: Account[];
    pageable: Pageable;
    totalElements: number;
    totalPages: number;
    last: boolean;
    numberOfElements: number;
    first: boolean;
    size: number;
    number: number;
    sort: {
      unsorted: boolean;
      sorted: boolean;
      empty: boolean;
    };
    empty: boolean;
};

export type Customer = {
  customerID: number;
  fullName: string;
  birthDate: Date;
  gender: number;
  email: string;
  joinDate: Date;
};

export type Review = {
    id: number;
 comment: string;
  feedbackDate: Date;
  updateDate: Date;
  rating: number;
  courseID: number;
  customer: Customer;
}
  
export type ReviewsPagination = {
    content: Review[];
    pageable: Pageable;
    totalElements: number;
    totalPages: number;
    last: boolean;
    numberOfElements: number;
    first: boolean;
    size: number;
    number: number;
    sort: {
      unsorted: boolean;
      sorted: boolean;
      empty: boolean;
    };
    empty: boolean;
};
  

export type CertificationDto = {
  id: number;
  lectureName: string;
  recieveDate: Date;
  courseID: Course;
  path: string;
};
