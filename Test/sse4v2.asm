%macro testcase 2
 %ifdef BIN
  db %1
 %endif
 %ifdef SRC
  %2
 %endif
%endmacro


bits 64

testcase	{ 0xf2, 0x0f, 0x38, 0xf0, 0xd9                                           }, { crc32  ebx,cl                                                }
testcase	{ 0xf2, 0x48, 0x0f, 0x38, 0xf0, 0xd9                                     }, { crc32  rbx,cl                                                }
testcase	{ 0x66, 0xf2, 0x0f, 0x38, 0xf1, 0xd9                                     }, { crc32  ebx,cx                                                }
testcase	{ 0xf2, 0x0f, 0x38, 0xf1, 0xd9                                           }, { crc32  ebx,ecx                                               }
testcase	{ 0xf2, 0x48, 0x0f, 0x38, 0xf1, 0xd9                                     }, { crc32  rbx,rcx                                               }
testcase	{ 0xf2, 0x0f, 0x38, 0xf0, 0x19                                           }, { crc32  ebx,BYTE [rcx]                                        }
testcase	{ 0x66, 0xf2, 0x0f, 0x38, 0xf1, 0x19                                     }, { crc32  ebx,WORD [rcx]                                        }
testcase	{ 0xf2, 0x0f, 0x38, 0xf1, 0x19                                           }, { crc32  ebx,DWORD [rcx]                                       }
testcase	{ 0xf2, 0x48, 0x0f, 0x38, 0xf1, 0x19                                     }, { crc32  rbx,QWORD [rcx]                                       }
testcase	{ 0xf2, 0x0f, 0x38, 0xf0, 0xd9                                           }, { crc32  ebx,cl                                                }
testcase	{ 0xf2, 0x48, 0x0f, 0x38, 0xf0, 0xd9                                     }, { crc32  rbx,cl                                                }
testcase	{ 0x66, 0xf2, 0x0f, 0x38, 0xf1, 0xd9                                     }, { crc32  ebx,cx                                                }
testcase	{ 0xf2, 0x0f, 0x38, 0xf1, 0xd9                                           }, { crc32  ebx,ecx                                               }
testcase	{ 0xf2, 0x48, 0x0f, 0x38, 0xf1, 0xd9                                     }, { crc32  rbx,rcx                                               }
testcase	{ 0x66, 0x0f, 0x38, 0x37, 0x01                                           }, { pcmpgtq xmm0,OWORD [rcx]                                     }
testcase	{ 0x66, 0x0f, 0x38, 0x37, 0xc1                                           }, { pcmpgtq xmm0,xmm1                                            }
testcase	{ 0x66, 0x0f, 0x3a, 0x61, 0x01, 0x00                                     }, { pcmpestri xmm0,OWORD [rcx],0x0                               }
testcase	{ 0x66, 0x0f, 0x3a, 0x61, 0xc1, 0x00                                     }, { pcmpestri xmm0,xmm1,0x0                                      }
testcase	{ 0x66, 0x0f, 0x3a, 0x60, 0x01, 0x01                                     }, { pcmpestrm xmm0,OWORD [rcx],0x1                               }
testcase	{ 0x66, 0x0f, 0x3a, 0x60, 0xc1, 0x01                                     }, { pcmpestrm xmm0,xmm1,0x1                                      }
testcase	{ 0x66, 0x0f, 0x3a, 0x63, 0x01, 0x02                                     }, { pcmpistri xmm0,OWORD [rcx],0x2                               }
testcase	{ 0x66, 0x0f, 0x3a, 0x63, 0xc1, 0x02                                     }, { pcmpistri xmm0,xmm1,0x2                                      }
testcase	{ 0x66, 0x0f, 0x3a, 0x62, 0x01, 0x03                                     }, { pcmpistrm xmm0,OWORD [rcx],0x3                               }
testcase	{ 0x66, 0x0f, 0x3a, 0x62, 0xc1, 0x03                                     }, { pcmpistrm xmm0,xmm1,0x3                                      }
testcase	{ 0x66, 0xf3, 0x0f, 0xb8, 0x19                                           }, { popcnt bx,WORD [rcx]                                         }
testcase	{ 0xf3, 0x0f, 0xb8, 0x19                                                 }, { popcnt ebx,DWORD [rcx]                                       }
testcase	{ 0xf3, 0x48, 0x0f, 0xb8, 0x19                                           }, { popcnt rbx,QWORD [rcx]                                       }
testcase	{ 0x66, 0xf3, 0x0f, 0xb8, 0x19                                           }, { popcnt bx,WORD [rcx]                                         }
testcase	{ 0xf3, 0x0f, 0xb8, 0x19                                                 }, { popcnt ebx,DWORD [rcx]                                       }
testcase	{ 0xf3, 0x48, 0x0f, 0xb8, 0x19                                           }, { popcnt rbx,QWORD [rcx]                                       }
testcase	{ 0x66, 0xf3, 0x0f, 0xb8, 0xd9                                           }, { popcnt bx,cx                                                 }
testcase	{ 0xf3, 0x0f, 0xb8, 0xd9                                                 }, { popcnt ebx,ecx                                               }
testcase	{ 0xf3, 0x48, 0x0f, 0xb8, 0xd9                                           }, { popcnt rbx,rcx                                               }
testcase	{ 0x66, 0xf3, 0x0f, 0xb8, 0xd9                                           }, { popcnt bx,cx                                                 }
testcase	{ 0xf3, 0x0f, 0xb8, 0xd9                                                 }, { popcnt ebx,ecx                                               }
testcase	{ 0xf3, 0x48, 0x0f, 0xb8, 0xd9                                           }, { popcnt rbx,rcx                                               }
testcase	{ 0xf2, 0x0f, 0x38, 0xf0, 0xd9                                           }, { crc32  ebx,cl                                                }
testcase	{ 0xf2, 0x48, 0x0f, 0x38, 0xf0, 0xd9                                     }, { crc32  rbx,cl                                                }
testcase	{ 0x66, 0xf2, 0x0f, 0x38, 0xf1, 0xd9                                     }, { crc32  ebx,cx                                                }
testcase	{ 0xf2, 0x0f, 0x38, 0xf1, 0xd9                                           }, { crc32  ebx,ecx                                               }
testcase	{ 0xf2, 0x48, 0x0f, 0x38, 0xf1, 0xd9                                     }, { crc32  rbx,rcx                                               }
testcase	{ 0xf2, 0x0f, 0x38, 0xf0, 0x19                                           }, { crc32  ebx,BYTE [rcx]                                        }
testcase	{ 0x66, 0xf2, 0x0f, 0x38, 0xf1, 0x19                                     }, { crc32  ebx,WORD [rcx]                                        }
testcase	{ 0xf2, 0x0f, 0x38, 0xf1, 0x19                                           }, { crc32  ebx,DWORD [rcx]                                       }
testcase	{ 0xf2, 0x48, 0x0f, 0x38, 0xf1, 0x19                                     }, { crc32  rbx,QWORD [rcx]                                       }
testcase	{ 0xf2, 0x0f, 0x38, 0xf0, 0xd9                                           }, { crc32  ebx,cl                                                }
testcase	{ 0xf2, 0x48, 0x0f, 0x38, 0xf0, 0xd9                                     }, { crc32  rbx,cl                                                }
testcase	{ 0x66, 0xf2, 0x0f, 0x38, 0xf1, 0xd9                                     }, { crc32  ebx,cx                                                }
testcase	{ 0xf2, 0x0f, 0x38, 0xf1, 0xd9                                           }, { crc32  ebx,ecx                                               }
testcase	{ 0xf2, 0x48, 0x0f, 0x38, 0xf1, 0xd9                                     }, { crc32  rbx,rcx                                               }
testcase	{ 0x66, 0x0f, 0x38, 0x37, 0x01                                           }, { pcmpgtq xmm0,OWORD [rcx]                                     }
testcase	{ 0x66, 0x0f, 0x38, 0x37, 0xc1                                           }, { pcmpgtq xmm0,xmm1                                            }
testcase	{ 0x66, 0x0f, 0x3a, 0x61, 0x01, 0x00                                     }, { pcmpestri xmm0,OWORD [rcx],0x0                               }
testcase	{ 0x66, 0x0f, 0x3a, 0x61, 0xc1, 0x00                                     }, { pcmpestri xmm0,xmm1,0x0                                      }
testcase	{ 0x66, 0x0f, 0x3a, 0x60, 0x01, 0x01                                     }, { pcmpestrm xmm0,OWORD [rcx],0x1                               }
testcase	{ 0x66, 0x0f, 0x3a, 0x60, 0xc1, 0x01                                     }, { pcmpestrm xmm0,xmm1,0x1                                      }
testcase	{ 0x66, 0x0f, 0x3a, 0x63, 0x01, 0x02                                     }, { pcmpistri xmm0,OWORD [rcx],0x2                               }
testcase	{ 0x66, 0x0f, 0x3a, 0x63, 0xc1, 0x02                                     }, { pcmpistri xmm0,xmm1,0x2                                      }
testcase	{ 0x66, 0x0f, 0x3a, 0x62, 0x01, 0x03                                     }, { pcmpistrm xmm0,OWORD [rcx],0x3                               }
testcase	{ 0x66, 0x0f, 0x3a, 0x62, 0xc1, 0x03                                     }, { pcmpistrm xmm0,xmm1,0x3                                      }
testcase	{ 0x66, 0xf3, 0x0f, 0xb8, 0x19                                           }, { popcnt bx,WORD [rcx]                                         }
testcase	{ 0xf3, 0x0f, 0xb8, 0x19                                                 }, { popcnt ebx,DWORD [rcx]                                       }
testcase	{ 0xf3, 0x48, 0x0f, 0xb8, 0x19                                           }, { popcnt rbx,QWORD [rcx]                                       }
testcase	{ 0x66, 0xf3, 0x0f, 0xb8, 0x19                                           }, { popcnt bx,WORD [rcx]                                         }
testcase	{ 0xf3, 0x0f, 0xb8, 0x19                                                 }, { popcnt ebx,DWORD [rcx]                                       }
testcase	{ 0xf3, 0x48, 0x0f, 0xb8, 0x19                                           }, { popcnt rbx,QWORD [rcx]                                       }
testcase	{ 0x66, 0xf3, 0x0f, 0xb8, 0xd9                                           }, { popcnt bx,cx                                                 }
testcase	{ 0xf3, 0x0f, 0xb8, 0xd9                                                 }, { popcnt ebx,ecx                                               }
testcase	{ 0xf3, 0x48, 0x0f, 0xb8, 0xd9                                           }, { popcnt rbx,rcx                                               }
testcase	{ 0x66, 0xf3, 0x0f, 0xb8, 0xd9                                           }, { popcnt bx,cx                                                 }
testcase	{ 0xf3, 0x0f, 0xb8, 0xd9                                                 }, { popcnt ebx,ecx                                               }
testcase	{ 0xf3, 0x48, 0x0f, 0xb8, 0xd9                                           }, { popcnt rbx,rcx                                               }
