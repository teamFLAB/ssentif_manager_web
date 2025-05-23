enum WorkPosition {
  representative,
  manager,
  employee,
  freelancer;

  static const String representativeDTO = "CEO";
  static const String managerDTO = "MANAGER";
  static const String employeeDTO = "EMPLOYEE";
  static const String freelancerDTO = "FREELANCER";


  static WorkPosition getWorkPositionFromDTO(String workPosition) {
    if(workPosition == representativeDTO) {
      return WorkPosition.representative;
    } else if(workPosition == managerDTO) {
      return WorkPosition.manager;
    } else if(workPosition == employeeDTO) {
      return WorkPosition.employee;
    } else if(workPosition == freelancerDTO) {
      return WorkPosition.freelancer;
    } else {
      return WorkPosition.employee;
    }
  }
}

extension WorkPositionExtension on WorkPosition {
  String getIntlKey() {
    if(this == WorkPosition.representative) {
      return "representative";
    } else if(this == WorkPosition.manager) {
      return "manager";
    } else if(this == WorkPosition.employee) {
      return "employee";
    } else if(this == WorkPosition.freelancer) {
      return "freelancer";
    } else {
      return "";
    }
  }

  String getDTO() {
    if(this == WorkPosition.representative) {
      return WorkPosition.representativeDTO;
    } else if(this == WorkPosition.manager) {
      return WorkPosition.managerDTO;
    } else if(this == WorkPosition.employee) {
      return WorkPosition.employeeDTO;
    } else if(this == WorkPosition.freelancer) {
      return WorkPosition.freelancerDTO;
    } else {
      return "";
    }
  }
}