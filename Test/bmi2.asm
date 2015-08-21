%macro testcase 2
 %ifdef BIN
  db %1
 %endif
 %ifdef SRC
  %2
 %endif
%endmacro


bits 64

testcase	{ 0xc4, 0xe3, 0x7b, 0xf0, 0xd8, 0x07                                     }, { rorx   ebx,eax,0x7                                           }
testcase	{ 0xc4, 0xe3, 0x7b, 0xf0, 0x19, 0x07                                     }, { rorx   ebx,DWORD [rcx],0x7                                   }
testcase	{ 0xc4, 0x43, 0x7b, 0xf0, 0xf9, 0x07                                     }, { rorx   r15d,r9d,0x7                                          }
testcase	{ 0xc4, 0x63, 0x7b, 0xf0, 0x39, 0x07                                     }, { rorx   r15d,DWORD [rcx],0x7                                  }
testcase	{ 0xc4, 0xe2, 0x63, 0xf6, 0xf0                                           }, { mulx   esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x63, 0xf6, 0x31                                           }, { mulx   esi,ebx,DWORD [rcx]                                   }
testcase	{ 0xc4, 0x42, 0x03, 0xf6, 0xd1                                           }, { mulx   r10d,r15d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x03, 0xf6, 0x11                                           }, { mulx   r10d,r15d,DWORD [rcx]                                 }
testcase	{ 0xc4, 0xe2, 0x63, 0xf5, 0xf0                                           }, { pdep   esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x63, 0xf5, 0x31                                           }, { pdep   esi,ebx,DWORD [rcx]                                   }
testcase	{ 0xc4, 0x42, 0x03, 0xf5, 0xd1                                           }, { pdep   r10d,r15d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x03, 0xf5, 0x11                                           }, { pdep   r10d,r15d,DWORD [rcx]                                 }
testcase	{ 0xc4, 0xe2, 0x62, 0xf5, 0xf0                                           }, { pext   esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x62, 0xf5, 0x31                                           }, { pext   esi,ebx,DWORD [rcx]                                   }
testcase	{ 0xc4, 0x42, 0x02, 0xf5, 0xd1                                           }, { pext   r10d,r15d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x02, 0xf5, 0x11                                           }, { pext   r10d,r15d,DWORD [rcx]                                 }
testcase	{ 0xc4, 0xe2, 0x78, 0xf5, 0xf3                                           }, { bzhi   esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x60, 0xf5, 0x31                                           }, { bzhi   esi,DWORD [rcx],ebx                                   }
testcase	{ 0xc4, 0x42, 0x30, 0xf5, 0xd7                                           }, { bzhi   r10d,r15d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x30, 0xf5, 0x11                                           }, { bzhi   r10d,DWORD [rcx],r9d                                  }
testcase	{ 0xc4, 0xe2, 0x7a, 0xf7, 0xf3                                           }, { sarx   esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x62, 0xf7, 0x31                                           }, { sarx   esi,DWORD [rcx],ebx                                   }
testcase	{ 0xc4, 0x42, 0x32, 0xf7, 0xd7                                           }, { sarx   r10d,r15d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x32, 0xf7, 0x11                                           }, { sarx   r10d,DWORD [rcx],r9d                                  }
testcase	{ 0xc4, 0xe2, 0x79, 0xf7, 0xf3                                           }, { shlx   esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x61, 0xf7, 0x31                                           }, { shlx   esi,DWORD [rcx],ebx                                   }
testcase	{ 0xc4, 0x42, 0x31, 0xf7, 0xd7                                           }, { shlx   r10d,r15d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x31, 0xf7, 0x11                                           }, { shlx   r10d,DWORD [rcx],r9d                                  }
testcase	{ 0xc4, 0xe2, 0x7b, 0xf7, 0xf3                                           }, { shrx   esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x63, 0xf7, 0x31                                           }, { shrx   esi,DWORD [rcx],ebx                                   }
testcase	{ 0xc4, 0x42, 0x33, 0xf7, 0xd7                                           }, { shrx   r10d,r15d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x33, 0xf7, 0x11                                           }, { shrx   r10d,DWORD [rcx],r9d                                  }
testcase	{ 0xc4, 0xe3, 0xfb, 0xf0, 0xd8, 0x07                                     }, { rorx   rbx,rax,0x7                                           }
testcase	{ 0xc4, 0xe3, 0xfb, 0xf0, 0x19, 0x07                                     }, { rorx   rbx,QWORD [rcx],0x7                                   }
testcase	{ 0xc4, 0x43, 0xfb, 0xf0, 0xf9, 0x07                                     }, { rorx   r15,r9,0x7                                            }
testcase	{ 0xc4, 0x63, 0xfb, 0xf0, 0x39, 0x07                                     }, { rorx   r15,QWORD [rcx],0x7                                   }
testcase	{ 0xc4, 0xe2, 0xe3, 0xf6, 0xf0                                           }, { mulx   rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xe3, 0xf6, 0x31                                           }, { mulx   rsi,rbx,QWORD [rcx]                                   }
testcase	{ 0xc4, 0x42, 0x83, 0xf6, 0xd1                                           }, { mulx   r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0x83, 0xf6, 0x11                                           }, { mulx   r10,r15,QWORD [rcx]                                   }
testcase	{ 0xc4, 0xe2, 0xe3, 0xf5, 0xf0                                           }, { pdep   rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xe3, 0xf5, 0x31                                           }, { pdep   rsi,rbx,QWORD [rcx]                                   }
testcase	{ 0xc4, 0x42, 0x83, 0xf5, 0xd1                                           }, { pdep   r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0x83, 0xf5, 0x11                                           }, { pdep   r10,r15,QWORD [rcx]                                   }
testcase	{ 0xc4, 0xe2, 0xe2, 0xf5, 0xf0                                           }, { pext   rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xe2, 0xf5, 0x31                                           }, { pext   rsi,rbx,QWORD [rcx]                                   }
testcase	{ 0xc4, 0x42, 0x82, 0xf5, 0xd1                                           }, { pext   r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0x82, 0xf5, 0x11                                           }, { pext   r10,r15,QWORD [rcx]                                   }
testcase	{ 0xc4, 0xe2, 0xf8, 0xf5, 0xf3                                           }, { bzhi   rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xf8, 0xf5, 0x31                                           }, { bzhi   rsi,QWORD [rcx],rax                                   }
testcase	{ 0xc4, 0x42, 0xb0, 0xf5, 0xd7                                           }, { bzhi   r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0xb0, 0xf5, 0x11                                           }, { bzhi   r10,QWORD [rcx],r9                                    }
testcase	{ 0xc4, 0xe2, 0xfa, 0xf7, 0xf3                                           }, { sarx   rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xfa, 0xf7, 0x31                                           }, { sarx   rsi,QWORD [rcx],rax                                   }
testcase	{ 0xc4, 0x42, 0xb2, 0xf7, 0xd7                                           }, { sarx   r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0xb2, 0xf7, 0x11                                           }, { sarx   r10,QWORD [rcx],r9                                    }
testcase	{ 0xc4, 0xe2, 0xf9, 0xf7, 0xf3                                           }, { shlx   rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xf9, 0xf7, 0x31                                           }, { shlx   rsi,QWORD [rcx],rax                                   }
testcase	{ 0xc4, 0x42, 0xb1, 0xf7, 0xd7                                           }, { shlx   r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0xb1, 0xf7, 0x11                                           }, { shlx   r10,QWORD [rcx],r9                                    }
testcase	{ 0xc4, 0xe2, 0xfb, 0xf7, 0xf3                                           }, { shrx   rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xfb, 0xf7, 0x31                                           }, { shrx   rsi,QWORD [rcx],rax                                   }
testcase	{ 0xc4, 0x42, 0xb3, 0xf7, 0xd7                                           }, { shrx   r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0xb3, 0xf7, 0x11                                           }, { shrx   r10,QWORD [rcx],r9                                    }
testcase	{ 0xc4, 0xe3, 0x7b, 0xf0, 0xd8, 0x07                                     }, { rorx   ebx,eax,0x7                                           }
testcase	{ 0xc4, 0xe3, 0x7b, 0xf0, 0x19, 0x07                                     }, { rorx   ebx,DWORD [rcx],0x7                                   }
testcase	{ 0xc4, 0x43, 0x7b, 0xf0, 0xd1, 0x07                                     }, { rorx   r10d,r9d,0x7                                          }
testcase	{ 0xc4, 0x63, 0x7b, 0xf0, 0x11, 0x07                                     }, { rorx   r10d,DWORD [rcx],0x7                                  }
testcase	{ 0xc4, 0xe3, 0x7b, 0xf0, 0x19, 0x07                                     }, { rorx   ebx,DWORD [rcx],0x7                                   }
testcase	{ 0xc4, 0xe2, 0x63, 0xf6, 0xf0                                           }, { mulx   esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x63, 0xf6, 0x31                                           }, { mulx   esi,ebx,DWORD [rcx]                                   }
testcase	{ 0xc4, 0x42, 0x2b, 0xf6, 0xf9                                           }, { mulx   r15d,r10d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x2b, 0xf6, 0x39                                           }, { mulx   r15d,r10d,DWORD [rcx]                                 }
testcase	{ 0xc4, 0xe2, 0x63, 0xf6, 0x31                                           }, { mulx   esi,ebx,DWORD [rcx]                                   }
testcase	{ 0xc4, 0xe2, 0x63, 0xf5, 0xf0                                           }, { pdep   esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x63, 0xf5, 0x31                                           }, { pdep   esi,ebx,DWORD [rcx]                                   }
testcase	{ 0xc4, 0x42, 0x2b, 0xf5, 0xf9                                           }, { pdep   r15d,r10d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x2b, 0xf5, 0x39                                           }, { pdep   r15d,r10d,DWORD [rcx]                                 }
testcase	{ 0xc4, 0xe2, 0x63, 0xf5, 0x31                                           }, { pdep   esi,ebx,DWORD [rcx]                                   }
testcase	{ 0xc4, 0xe2, 0x62, 0xf5, 0xf0                                           }, { pext   esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x62, 0xf5, 0x31                                           }, { pext   esi,ebx,DWORD [rcx]                                   }
testcase	{ 0xc4, 0x42, 0x2a, 0xf5, 0xf9                                           }, { pext   r15d,r10d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x2a, 0xf5, 0x39                                           }, { pext   r15d,r10d,DWORD [rcx]                                 }
testcase	{ 0xc4, 0xe2, 0x62, 0xf5, 0x31                                           }, { pext   esi,ebx,DWORD [rcx]                                   }
testcase	{ 0xc4, 0xe2, 0x78, 0xf5, 0xf3                                           }, { bzhi   esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x60, 0xf5, 0x31                                           }, { bzhi   esi,DWORD [rcx],ebx                                   }
testcase	{ 0xc4, 0x42, 0x30, 0xf5, 0xfa                                           }, { bzhi   r15d,r10d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x30, 0xf5, 0x39                                           }, { bzhi   r15d,DWORD [rcx],r9d                                  }
testcase	{ 0xc4, 0xe2, 0x60, 0xf5, 0x31                                           }, { bzhi   esi,DWORD [rcx],ebx                                   }
testcase	{ 0xc4, 0xe2, 0x7a, 0xf7, 0xf3                                           }, { sarx   esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x62, 0xf7, 0x31                                           }, { sarx   esi,DWORD [rcx],ebx                                   }
testcase	{ 0xc4, 0x42, 0x32, 0xf7, 0xfa                                           }, { sarx   r15d,r10d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x32, 0xf7, 0x39                                           }, { sarx   r15d,DWORD [rcx],r9d                                  }
testcase	{ 0xc4, 0xe2, 0x62, 0xf7, 0x31                                           }, { sarx   esi,DWORD [rcx],ebx                                   }
testcase	{ 0xc4, 0xe2, 0x79, 0xf7, 0xf3                                           }, { shlx   esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x61, 0xf7, 0x31                                           }, { shlx   esi,DWORD [rcx],ebx                                   }
testcase	{ 0xc4, 0x42, 0x31, 0xf7, 0xfa                                           }, { shlx   r15d,r10d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x31, 0xf7, 0x39                                           }, { shlx   r15d,DWORD [rcx],r9d                                  }
testcase	{ 0xc4, 0xe2, 0x61, 0xf7, 0x31                                           }, { shlx   esi,DWORD [rcx],ebx                                   }
testcase	{ 0xc4, 0xe2, 0x7b, 0xf7, 0xf3                                           }, { shrx   esi,ebx,eax                                           }
testcase	{ 0xc4, 0xe2, 0x63, 0xf7, 0x31                                           }, { shrx   esi,DWORD [rcx],ebx                                   }
testcase	{ 0xc4, 0x42, 0x33, 0xf7, 0xfa                                           }, { shrx   r15d,r10d,r9d                                         }
testcase	{ 0xc4, 0x62, 0x33, 0xf7, 0x39                                           }, { shrx   r15d,DWORD [rcx],r9d                                  }
testcase	{ 0xc4, 0xe2, 0x63, 0xf7, 0x31                                           }, { shrx   esi,DWORD [rcx],ebx                                   }
testcase	{ 0xc4, 0xe3, 0xfb, 0xf0, 0xd8, 0x07                                     }, { rorx   rbx,rax,0x7                                           }
testcase	{ 0xc4, 0xe3, 0xfb, 0xf0, 0x19, 0x07                                     }, { rorx   rbx,QWORD [rcx],0x7                                   }
testcase	{ 0xc4, 0x43, 0xfb, 0xf0, 0xf9, 0x07                                     }, { rorx   r15,r9,0x7                                            }
testcase	{ 0xc4, 0x63, 0xfb, 0xf0, 0x39, 0x07                                     }, { rorx   r15,QWORD [rcx],0x7                                   }
testcase	{ 0xc4, 0xe3, 0xfb, 0xf0, 0x19, 0x07                                     }, { rorx   rbx,QWORD [rcx],0x7                                   }
testcase	{ 0xc4, 0xe2, 0xe3, 0xf6, 0xf0                                           }, { mulx   rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xe3, 0xf6, 0x31                                           }, { mulx   rsi,rbx,QWORD [rcx]                                   }
testcase	{ 0xc4, 0x42, 0x83, 0xf6, 0xd1                                           }, { mulx   r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0x83, 0xf6, 0x11                                           }, { mulx   r10,r15,QWORD [rcx]                                   }
testcase	{ 0xc4, 0xe2, 0xe3, 0xf6, 0x31                                           }, { mulx   rsi,rbx,QWORD [rcx]                                   }
testcase	{ 0xc4, 0xe2, 0xe3, 0xf5, 0xf0                                           }, { pdep   rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xe3, 0xf5, 0x31                                           }, { pdep   rsi,rbx,QWORD [rcx]                                   }
testcase	{ 0xc4, 0x42, 0x83, 0xf5, 0xd1                                           }, { pdep   r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0x83, 0xf5, 0x11                                           }, { pdep   r10,r15,QWORD [rcx]                                   }
testcase	{ 0xc4, 0xe2, 0xe3, 0xf5, 0x31                                           }, { pdep   rsi,rbx,QWORD [rcx]                                   }
testcase	{ 0xc4, 0xe2, 0xe2, 0xf5, 0xf0                                           }, { pext   rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xe2, 0xf5, 0x31                                           }, { pext   rsi,rbx,QWORD [rcx]                                   }
testcase	{ 0xc4, 0x42, 0x82, 0xf5, 0xd1                                           }, { pext   r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0x82, 0xf5, 0x11                                           }, { pext   r10,r15,QWORD [rcx]                                   }
testcase	{ 0xc4, 0xe2, 0xe2, 0xf5, 0x31                                           }, { pext   rsi,rbx,QWORD [rcx]                                   }
testcase	{ 0xc4, 0xe2, 0xf8, 0xf5, 0xf3                                           }, { bzhi   rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xf8, 0xf5, 0x31                                           }, { bzhi   rsi,QWORD [rcx],rax                                   }
testcase	{ 0xc4, 0x42, 0xb0, 0xf5, 0xd7                                           }, { bzhi   r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0xb0, 0xf5, 0x11                                           }, { bzhi   r10,QWORD [rcx],r9                                    }
testcase	{ 0xc4, 0xe2, 0xf8, 0xf5, 0x31                                           }, { bzhi   rsi,QWORD [rcx],rax                                   }
testcase	{ 0xc4, 0xe2, 0xfa, 0xf7, 0xf3                                           }, { sarx   rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xfa, 0xf7, 0x31                                           }, { sarx   rsi,QWORD [rcx],rax                                   }
testcase	{ 0xc4, 0x42, 0xb2, 0xf7, 0xd7                                           }, { sarx   r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0xb2, 0xf7, 0x11                                           }, { sarx   r10,QWORD [rcx],r9                                    }
testcase	{ 0xc4, 0xe2, 0xfa, 0xf7, 0x31                                           }, { sarx   rsi,QWORD [rcx],rax                                   }
testcase	{ 0xc4, 0xe2, 0xf9, 0xf7, 0xf3                                           }, { shlx   rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xf9, 0xf7, 0x31                                           }, { shlx   rsi,QWORD [rcx],rax                                   }
testcase	{ 0xc4, 0x42, 0xb1, 0xf7, 0xd7                                           }, { shlx   r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0xb1, 0xf7, 0x11                                           }, { shlx   r10,QWORD [rcx],r9                                    }
testcase	{ 0xc4, 0xe2, 0xf9, 0xf7, 0x31                                           }, { shlx   rsi,QWORD [rcx],rax                                   }
testcase	{ 0xc4, 0xe2, 0xfb, 0xf7, 0xf3                                           }, { shrx   rsi,rbx,rax                                           }
testcase	{ 0xc4, 0xe2, 0xfb, 0xf7, 0x31                                           }, { shrx   rsi,QWORD [rcx],rax                                   }
testcase	{ 0xc4, 0x42, 0xb3, 0xf7, 0xd7                                           }, { shrx   r10,r15,r9                                            }
testcase	{ 0xc4, 0x62, 0xb3, 0xf7, 0x11                                           }, { shrx   r10,QWORD [rcx],r9                                    }
testcase	{ 0xc4, 0xe2, 0xfb, 0xf7, 0x31                                           }, { shrx   rsi,QWORD [rcx],rax                                   }
