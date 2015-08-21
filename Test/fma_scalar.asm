%macro testcase 2
 %ifdef BIN
  db %1
 %endif
 %ifdef SRC
  %2
 %endif
%endmacro

bits 32

testcase	{ 0xc4, 0xe2, 0xcd, 0x99, 0xd4                                           }, { vfmadd132sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0x99, 0x11                                           }, { vfmadd132sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa9, 0xd4                                           }, { vfmadd213sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa9, 0x11                                           }, { vfmadd213sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb9, 0xd4                                           }, { vfmadd231sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb9, 0x11                                           }, { vfmadd231sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9b, 0xd4                                           }, { vfmsub132sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9b, 0x11                                           }, { vfmsub132sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xab, 0xd4                                           }, { vfmsub213sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0xab, 0x11                                           }, { vfmsub213sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbb, 0xd4                                           }, { vfmsub231sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbb, 0x11                                           }, { vfmsub231sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9d, 0xd4                                           }, { vfnmadd132sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9d, 0x11                                           }, { vfnmadd132sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xad, 0xd4                                           }, { vfnmadd213sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0xad, 0x11                                           }, { vfnmadd213sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbd, 0xd4                                           }, { vfnmadd231sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbd, 0x11                                           }, { vfnmadd231sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9f, 0xd4                                           }, { vfnmsub132sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9f, 0x11                                           }, { vfnmsub132sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xaf, 0xd4                                           }, { vfnmsub213sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0xaf, 0x11                                           }, { vfnmsub213sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbf, 0xd4                                           }, { vfnmsub231sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbf, 0x11                                           }, { vfnmsub231sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0x99, 0xd4                                           }, { vfmadd132ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0x99, 0x11                                           }, { vfmadd132ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa9, 0xd4                                           }, { vfmadd213ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa9, 0x11                                           }, { vfmadd213ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb9, 0xd4                                           }, { vfmadd231ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb9, 0x11                                           }, { vfmadd231ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9b, 0xd4                                           }, { vfmsub132ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9b, 0x11                                           }, { vfmsub132ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xab, 0xd4                                           }, { vfmsub213ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0xab, 0x11                                           }, { vfmsub213ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbb, 0xd4                                           }, { vfmsub231ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbb, 0x11                                           }, { vfmsub231ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9d, 0xd4                                           }, { vfnmadd132ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9d, 0x11                                           }, { vfnmadd132ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xad, 0xd4                                           }, { vfnmadd213ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0xad, 0x11                                           }, { vfnmadd213ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbd, 0xd4                                           }, { vfnmadd231ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbd, 0x11                                           }, { vfnmadd231ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9f, 0xd4                                           }, { vfnmsub132ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9f, 0x11                                           }, { vfnmsub132ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xaf, 0xd4                                           }, { vfnmsub213ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0xaf, 0x11                                           }, { vfnmsub213ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbf, 0xd4                                           }, { vfnmsub231ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbf, 0x11                                           }, { vfnmsub231ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0x99, 0xd4                                           }, { vfmadd132sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0x99, 0x11                                           }, { vfmadd132sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0x99, 0x11                                           }, { vfmadd132sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa9, 0xd4                                           }, { vfmadd213sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa9, 0x11                                           }, { vfmadd213sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa9, 0x11                                           }, { vfmadd213sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb9, 0xd4                                           }, { vfmadd231sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb9, 0x11                                           }, { vfmadd231sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb9, 0x11                                           }, { vfmadd231sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9b, 0xd4                                           }, { vfmsub132sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9b, 0x11                                           }, { vfmsub132sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9b, 0x11                                           }, { vfmsub132sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xab, 0xd4                                           }, { vfmsub213sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0xab, 0x11                                           }, { vfmsub213sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xab, 0x11                                           }, { vfmsub213sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbb, 0xd4                                           }, { vfmsub231sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbb, 0x11                                           }, { vfmsub231sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbb, 0x11                                           }, { vfmsub231sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9d, 0xd4                                           }, { vfnmadd132sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9d, 0x11                                           }, { vfnmadd132sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9d, 0x11                                           }, { vfnmadd132sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xad, 0xd4                                           }, { vfnmadd213sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0xad, 0x11                                           }, { vfnmadd213sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xad, 0x11                                           }, { vfnmadd213sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbd, 0xd4                                           }, { vfnmadd231sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbd, 0x11                                           }, { vfnmadd231sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbd, 0x11                                           }, { vfnmadd231sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9f, 0xd4                                           }, { vfnmsub132sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9f, 0x11                                           }, { vfnmsub132sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9f, 0x11                                           }, { vfnmsub132sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xaf, 0xd4                                           }, { vfnmsub213sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0xaf, 0x11                                           }, { vfnmsub213sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xaf, 0x11                                           }, { vfnmsub213sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbf, 0xd4                                           }, { vfnmsub231sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbf, 0x11                                           }, { vfnmsub231sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbf, 0x11                                           }, { vfnmsub231sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0x99, 0xd4                                           }, { vfmadd132ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0x99, 0x11                                           }, { vfmadd132ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0x99, 0x11                                           }, { vfmadd132ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa9, 0xd4                                           }, { vfmadd213ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa9, 0x11                                           }, { vfmadd213ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa9, 0x11                                           }, { vfmadd213ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb9, 0xd4                                           }, { vfmadd231ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb9, 0x11                                           }, { vfmadd231ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb9, 0x11                                           }, { vfmadd231ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9b, 0xd4                                           }, { vfmsub132ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9b, 0x11                                           }, { vfmsub132ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9b, 0x11                                           }, { vfmsub132ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xab, 0xd4                                           }, { vfmsub213ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0xab, 0x11                                           }, { vfmsub213ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xab, 0x11                                           }, { vfmsub213ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbb, 0xd4                                           }, { vfmsub231ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbb, 0x11                                           }, { vfmsub231ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbb, 0x11                                           }, { vfmsub231ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9d, 0xd4                                           }, { vfnmadd132ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9d, 0x11                                           }, { vfnmadd132ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9d, 0x11                                           }, { vfnmadd132ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xad, 0xd4                                           }, { vfnmadd213ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0xad, 0x11                                           }, { vfnmadd213ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xad, 0x11                                           }, { vfnmadd213ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbd, 0xd4                                           }, { vfnmadd231ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbd, 0x11                                           }, { vfnmadd231ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbd, 0x11                                           }, { vfnmadd231ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9f, 0xd4                                           }, { vfnmsub132ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9f, 0x11                                           }, { vfnmsub132ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9f, 0x11                                           }, { vfnmsub132ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xaf, 0xd4                                           }, { vfnmsub213ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0xaf, 0x11                                           }, { vfnmsub213ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xaf, 0x11                                           }, { vfnmsub213ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbf, 0xd4                                           }, { vfnmsub231ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbf, 0x11                                           }, { vfnmsub231ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbf, 0x11                                           }, { vfnmsub231ss xmm2,xmm6,DWORD [ecx]                           }
