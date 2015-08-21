%macro testcase 2
 %ifdef BIN
  db %1
 %endif
 %ifdef SRC
  %2
 %endif
%endmacro


bits 64

testcase	{ 0x66, 0xf3, 0x0f, 0xbc, 0xd8                                           }, { tzcnt  bx,ax                                                 }
testcase	{ 0x66, 0xf3, 0x0f, 0xbc, 0x19                                           }, { tzcnt  bx,WORD [rcx]                                         }
testcase	{ 0x66, 0xf3, 0x44, 0x0f, 0xbc, 0x39                                     }, { tzcnt  r15w,WORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0x60, 0xf2, 0xf0                                           }, { andn   esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x60, 0xf2, 0x31                                           }, { andn   esi,ebx,DWORD [rcx]                                   }
testcase	{ 0xc4, 0x42, 0x00, 0xf2, 0xd1                                           }, { andn   r10d,r15d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x00, 0xf2, 0x11                                           }, { andn   r10d,r15d,DWORD [rcx]                                 }
testcase	{ 0xc4, 0xe2, 0x78, 0xf7, 0xf3                                           }, { bextr  esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x60, 0xf7, 0x31                                           }, { bextr  esi,DWORD [rcx],ebx                                   }
testcase	{ 0xc4, 0x42, 0x30, 0xf7, 0xd7                                           }, { bextr  r10d,r15d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x30, 0xf7, 0x11                                           }, { bextr  r10d,DWORD [rcx],r9d                                  }
testcase	{ 0xf3, 0x0f, 0xbc, 0xd8                                                 }, { tzcnt  ebx,eax                                               }
testcase	{ 0xf3, 0x0f, 0xbc, 0x19                                                 }, { tzcnt  ebx,DWORD [rcx]                                       }
testcase	{ 0xf3, 0x44, 0x0f, 0xbc, 0x39                                           }, { tzcnt  r15d,DWORD [rcx]                                      }
testcase	{ 0xc4, 0xe2, 0x60, 0xf3, 0xd8                                           }, { blsi   ebx,eax                                               }
testcase	{ 0xc4, 0xe2, 0x60, 0xf3, 0x19                                           }, { blsi   ebx,DWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0x00, 0xf3, 0x19                                           }, { blsi   r15d,DWORD [rcx]                                      }
testcase	{ 0xc4, 0xe2, 0x60, 0xf3, 0xd0                                           }, { blsmsk ebx,eax                                               }
testcase	{ 0xc4, 0xe2, 0x60, 0xf3, 0x11                                           }, { blsmsk ebx,DWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0x00, 0xf3, 0x11                                           }, { blsmsk r15d,DWORD [rcx]                                      }
testcase	{ 0xc4, 0xe2, 0x60, 0xf3, 0xc8                                           }, { blsr   ebx,eax                                               }
testcase	{ 0xc4, 0xe2, 0x60, 0xf3, 0x09                                           }, { blsr   ebx,DWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0x00, 0xf3, 0x09                                           }, { blsr   r15d,DWORD [rcx]                                      }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf2, 0xf0                                           }, { andn   rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf2, 0x31                                           }, { andn   rsi,rbx,QWORD [rcx]                                   }
testcase	{ 0xc4, 0x42, 0x80, 0xf2, 0xd1                                           }, { andn   r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0x80, 0xf2, 0x11                                           }, { andn   r10,r15,QWORD [rcx]                                   }
testcase	{ 0xc4, 0xe2, 0xf8, 0xf7, 0xf3                                           }, { bextr  rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xf8, 0xf7, 0x31                                           }, { bextr  rsi,QWORD [rcx],rax                                   }
testcase	{ 0xc4, 0x42, 0xb0, 0xf7, 0xd7                                           }, { bextr  r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0xb0, 0xf7, 0x11                                           }, { bextr  r10,QWORD [rcx],r9                                    }
testcase	{ 0xf3, 0x48, 0x0f, 0xbc, 0xd8                                           }, { tzcnt  rbx,rax                                               }
testcase	{ 0xf3, 0x48, 0x0f, 0xbc, 0x19                                           }, { tzcnt  rbx,QWORD [rcx]                                       }
testcase	{ 0xf3, 0x4d, 0x0f, 0xbc, 0xf9                                           }, { tzcnt  r15,r9                                                }
testcase	{ 0xf3, 0x4c, 0x0f, 0xbc, 0x39                                           }, { tzcnt  r15,QWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf3, 0xd8                                           }, { blsi   rbx,rax                                               }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf3, 0x19                                           }, { blsi   rbx,QWORD [rcx]                                       }
testcase	{ 0xc4, 0xc2, 0x80, 0xf3, 0xd9                                           }, { blsi   r15,r9                                                }
testcase	{ 0xc4, 0xe2, 0x80, 0xf3, 0x19                                           }, { blsi   r15,QWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf3, 0xd0                                           }, { blsmsk rbx,rax                                               }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf3, 0x11                                           }, { blsmsk rbx,QWORD [rcx]                                       }
testcase	{ 0xc4, 0xc2, 0x80, 0xf3, 0xd1                                           }, { blsmsk r15,r9                                                }
testcase	{ 0xc4, 0xe2, 0x80, 0xf3, 0x11                                           }, { blsmsk r15,QWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf3, 0xc8                                           }, { blsr   rbx,rax                                               }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf3, 0x09                                           }, { blsr   rbx,QWORD [rcx]                                       }
testcase	{ 0xc4, 0xc2, 0x80, 0xf3, 0xc9                                           }, { blsr   r15,r9                                                }
testcase	{ 0xc4, 0xe2, 0x80, 0xf3, 0x09                                           }, { blsr   r15,QWORD [rcx]                                       }
testcase	{ 0x66, 0xf3, 0x0f, 0xbc, 0xd8                                           }, { tzcnt  bx,ax                                                 }
testcase	{ 0x66, 0xf3, 0x0f, 0xbc, 0x19                                           }, { tzcnt  bx,WORD [rcx]                                         }
testcase	{ 0x66, 0xf3, 0x44, 0x0f, 0xbc, 0x11                                     }, { tzcnt  r10w,WORD [rcx]                                       }
testcase	{ 0x66, 0xf3, 0x0f, 0xbc, 0x19                                           }, { tzcnt  bx,WORD [rcx]                                         }
testcase	{ 0xc4, 0xe2, 0x60, 0xf2, 0xf0                                           }, { andn   esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x60, 0xf2, 0x31                                           }, { andn   esi,ebx,DWORD [rcx]                                   }
testcase	{ 0xc4, 0x42, 0x28, 0xf2, 0xf9                                           }, { andn   r15d,r10d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x28, 0xf2, 0x39                                           }, { andn   r15d,r10d,DWORD [rcx]                                 }
testcase	{ 0xc4, 0xe2, 0x60, 0xf2, 0x31                                           }, { andn   esi,ebx,DWORD [rcx]                                   }
testcase	{ 0xc4, 0xe2, 0x78, 0xf7, 0xf3                                           }, { bextr  esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x60, 0xf7, 0x31                                           }, { bextr  esi,DWORD [rcx],ebx                                   }
testcase	{ 0xc4, 0x42, 0x30, 0xf7, 0xfa                                           }, { bextr  r15d,r10d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x30, 0xf7, 0x39                                           }, { bextr  r15d,DWORD [rcx],r9d                                  }
testcase	{ 0xc4, 0xe2, 0x60, 0xf7, 0x31                                           }, { bextr  esi,DWORD [rcx],ebx                                   }
testcase	{ 0xf3, 0x0f, 0xbc, 0xd8                                                 }, { tzcnt  ebx,eax                                               }
testcase	{ 0xf3, 0x0f, 0xbc, 0x19                                                 }, { tzcnt  ebx,DWORD [rcx]                                       }
testcase	{ 0xf3, 0x44, 0x0f, 0xbc, 0x11                                           }, { tzcnt  r10d,DWORD [rcx]                                      }
testcase	{ 0xf3, 0x0f, 0xbc, 0x19                                                 }, { tzcnt  ebx,DWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0x60, 0xf3, 0xd8                                           }, { blsi   ebx,eax                                               }
testcase	{ 0xc4, 0xe2, 0x60, 0xf3, 0x19                                           }, { blsi   ebx,DWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0x28, 0xf3, 0x19                                           }, { blsi   r10d,DWORD [rcx]                                      }
testcase	{ 0xc4, 0xe2, 0x60, 0xf3, 0x19                                           }, { blsi   ebx,DWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0x60, 0xf3, 0xd0                                           }, { blsmsk ebx,eax                                               }
testcase	{ 0xc4, 0xe2, 0x60, 0xf3, 0x11                                           }, { blsmsk ebx,DWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0x28, 0xf3, 0x11                                           }, { blsmsk r10d,DWORD [rcx]                                      }
testcase	{ 0xc4, 0xe2, 0x60, 0xf3, 0x11                                           }, { blsmsk ebx,DWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0x60, 0xf3, 0xc8                                           }, { blsr   ebx,eax                                               }
testcase	{ 0xc4, 0xe2, 0x60, 0xf3, 0x09                                           }, { blsr   ebx,DWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0x28, 0xf3, 0x09                                           }, { blsr   r10d,DWORD [rcx]                                      }
testcase	{ 0xc4, 0xe2, 0x60, 0xf3, 0x09                                           }, { blsr   ebx,DWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf2, 0xf0                                           }, { andn   rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf2, 0x31                                           }, { andn   rsi,rbx,QWORD [rcx]                                   }
testcase	{ 0xc4, 0x42, 0x80, 0xf2, 0xd1                                           }, { andn   r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0x80, 0xf2, 0x11                                           }, { andn   r10,r15,QWORD [rcx]                                   }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf2, 0x31                                           }, { andn   rsi,rbx,QWORD [rcx]                                   }
testcase	{ 0xc4, 0xe2, 0xf8, 0xf7, 0xf3                                           }, { bextr  rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xf8, 0xf7, 0x31                                           }, { bextr  rsi,QWORD [rcx],rax                                   }
testcase	{ 0xc4, 0x42, 0xb0, 0xf7, 0xd7                                           }, { bextr  r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0xb0, 0xf7, 0x11                                           }, { bextr  r10,QWORD [rcx],r9                                    }
testcase	{ 0xc4, 0xe2, 0xf8, 0xf7, 0x31                                           }, { bextr  rsi,QWORD [rcx],rax                                   }
testcase	{ 0xf3, 0x48, 0x0f, 0xbc, 0xd8                                           }, { tzcnt  rbx,rax                                               }
testcase	{ 0xf3, 0x48, 0x0f, 0xbc, 0x19                                           }, { tzcnt  rbx,QWORD [rcx]                                       }
testcase	{ 0xf3, 0x4d, 0x0f, 0xbc, 0xf9                                           }, { tzcnt  r15,r9                                                }
testcase	{ 0xf3, 0x4c, 0x0f, 0xbc, 0x39                                           }, { tzcnt  r15,QWORD [rcx]                                       }
testcase	{ 0xf3, 0x48, 0x0f, 0xbc, 0x19                                           }, { tzcnt  rbx,QWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf3, 0xd8                                           }, { blsi   rbx,rax                                               }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf3, 0x19                                           }, { blsi   rbx,QWORD [rcx]                                       }
testcase	{ 0xc4, 0xc2, 0x80, 0xf3, 0xd9                                           }, { blsi   r15,r9                                                }
testcase	{ 0xc4, 0xe2, 0x80, 0xf3, 0x19                                           }, { blsi   r15,QWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf3, 0x19                                           }, { blsi   rbx,QWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf3, 0xd0                                           }, { blsmsk rbx,rax                                               }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf3, 0x11                                           }, { blsmsk rbx,QWORD [rcx]                                       }
testcase	{ 0xc4, 0xc2, 0x80, 0xf3, 0xd1                                           }, { blsmsk r15,r9                                                }
testcase	{ 0xc4, 0xe2, 0x80, 0xf3, 0x11                                           }, { blsmsk r15,QWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf3, 0x11                                           }, { blsmsk rbx,QWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf3, 0xc8                                           }, { blsr   rbx,rax                                               }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf3, 0x09                                           }, { blsr   rbx,QWORD [rcx]                                       }
testcase	{ 0xc4, 0xc2, 0x80, 0xf3, 0xc9                                           }, { blsr   r15,r9                                                }
testcase	{ 0xc4, 0xe2, 0x80, 0xf3, 0x09                                           }, { blsr   r15,QWORD [rcx]                                       }
testcase	{ 0xc4, 0xe2, 0xe0, 0xf3, 0x09                                           }, { blsr   rbx,QWORD [rcx]                                       }
