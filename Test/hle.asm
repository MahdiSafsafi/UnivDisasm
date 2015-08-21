%macro testcase 2
 %ifdef BIN
  db %1
 %endif
 %ifdef SRC
  %2
 %endif
%endmacro


bits 64

testcase	{ 0xf2, 0xf0, 0x80, 0x11, 0x64                                           }, { xacquire lock adc BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x11, 0x64                                           }, { xacquire lock adc BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x11, 0x64                                           }, { xrelease lock adc BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x11, 0x64                                           }, { xrelease lock adc BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x11, 0x64                                           }, { lock xacquire adc BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x11, 0x64                                           }, { lock xrelease adc BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x01, 0x64                                           }, { xacquire lock add BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x01, 0x64                                           }, { xacquire lock add BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x01, 0x64                                           }, { xrelease lock add BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x01, 0x64                                           }, { xrelease lock add BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x01, 0x64                                           }, { lock xacquire add BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x01, 0x64                                           }, { lock xrelease add BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x21, 0x64                                           }, { xacquire lock and BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x21, 0x64                                           }, { xacquire lock and BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x21, 0x64                                           }, { xrelease lock and BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x21, 0x64                                           }, { xrelease lock and BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x21, 0x64                                           }, { lock xacquire and BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x21, 0x64                                           }, { lock xrelease and BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xc6, 0x01, 0x64                                                 }, { xrelease mov BYTE [rcx],0x64                                 }
testcase	{ 0xf2, 0xf0, 0x80, 0x09, 0x64                                           }, { xacquire lock or BYTE [rcx],0x64                             }
testcase	{ 0xf2, 0xf0, 0x80, 0x09, 0x64                                           }, { xacquire lock or BYTE [rcx],0x64                             }
testcase	{ 0xf3, 0xf0, 0x80, 0x09, 0x64                                           }, { xrelease lock or BYTE [rcx],0x64                             }
testcase	{ 0xf3, 0xf0, 0x80, 0x09, 0x64                                           }, { xrelease lock or BYTE [rcx],0x64                             }
testcase	{ 0xf0, 0xf2, 0x80, 0x09, 0x64                                           }, { lock xacquire or BYTE [rcx],0x64                             }
testcase	{ 0xf0, 0xf3, 0x80, 0x09, 0x64                                           }, { lock xrelease or BYTE [rcx],0x64                             }
testcase	{ 0xf2, 0xf0, 0x80, 0x19, 0x64                                           }, { xacquire lock sbb BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x19, 0x64                                           }, { xacquire lock sbb BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x19, 0x64                                           }, { xrelease lock sbb BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x19, 0x64                                           }, { xrelease lock sbb BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x19, 0x64                                           }, { lock xacquire sbb BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x19, 0x64                                           }, { lock xrelease sbb BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x29, 0x64                                           }, { xacquire lock sub BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x29, 0x64                                           }, { xacquire lock sub BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x29, 0x64                                           }, { xrelease lock sub BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x29, 0x64                                           }, { xrelease lock sub BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x29, 0x64                                           }, { lock xacquire sub BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x29, 0x64                                           }, { lock xrelease sub BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x31, 0x64                                           }, { xacquire lock xor BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x31, 0x64                                           }, { xacquire lock xor BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x31, 0x64                                           }, { xrelease lock xor BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x31, 0x64                                           }, { xrelease lock xor BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x31, 0x64                                           }, { lock xacquire xor BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x31, 0x64                                           }, { lock xrelease xor BYTE [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x11, 0xe8, 0x03                               }, { xacquire lock adc WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x11, 0xe8, 0x03                               }, { xacquire lock adc WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x11, 0xe8, 0x03                               }, { xrelease lock adc WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x11, 0xe8, 0x03                               }, { xrelease lock adc WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf2, 0x66, 0x81, 0x11, 0xe8, 0x03                               }, { lock xacquire adc WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf3, 0x66, 0x81, 0x11, 0xe8, 0x03                               }, { lock xrelease adc WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x01, 0xe8, 0x03                               }, { xacquire lock add WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x01, 0xe8, 0x03                               }, { xacquire lock add WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x01, 0xe8, 0x03                               }, { xrelease lock add WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x01, 0xe8, 0x03                               }, { xrelease lock add WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf2, 0x66, 0x81, 0x01, 0xe8, 0x03                               }, { lock xacquire add WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf3, 0x66, 0x81, 0x01, 0xe8, 0x03                               }, { lock xrelease add WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x21, 0xe8, 0x03                               }, { xacquire lock and WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x21, 0xe8, 0x03                               }, { xacquire lock and WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x21, 0xe8, 0x03                               }, { xrelease lock and WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x21, 0xe8, 0x03                               }, { xrelease lock and WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf2, 0x66, 0x81, 0x21, 0xe8, 0x03                               }, { lock xacquire and WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf3, 0x66, 0x81, 0x21, 0xe8, 0x03                               }, { lock xrelease and WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xc7, 0x01, 0xe8, 0x03                                     }, { xrelease mov WORD [rcx],0x3e8                                }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x09, 0xe8, 0x03                               }, { xacquire lock or WORD [rcx],0x3e8                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x09, 0xe8, 0x03                               }, { xacquire lock or WORD [rcx],0x3e8                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x09, 0xe8, 0x03                               }, { xrelease lock or WORD [rcx],0x3e8                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x09, 0xe8, 0x03                               }, { xrelease lock or WORD [rcx],0x3e8                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x81, 0x09, 0xe8, 0x03                               }, { lock xacquire or WORD [rcx],0x3e8                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x81, 0x09, 0xe8, 0x03                               }, { lock xrelease or WORD [rcx],0x3e8                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x19, 0xe8, 0x03                               }, { xacquire lock sbb WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x19, 0xe8, 0x03                               }, { xacquire lock sbb WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x19, 0xe8, 0x03                               }, { xrelease lock sbb WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x19, 0xe8, 0x03                               }, { xrelease lock sbb WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf2, 0x66, 0x81, 0x19, 0xe8, 0x03                               }, { lock xacquire sbb WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf3, 0x66, 0x81, 0x19, 0xe8, 0x03                               }, { lock xrelease sbb WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x29, 0xe8, 0x03                               }, { xacquire lock sub WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x29, 0xe8, 0x03                               }, { xacquire lock sub WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x29, 0xe8, 0x03                               }, { xrelease lock sub WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x29, 0xe8, 0x03                               }, { xrelease lock sub WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf2, 0x66, 0x81, 0x29, 0xe8, 0x03                               }, { lock xacquire sub WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf3, 0x66, 0x81, 0x29, 0xe8, 0x03                               }, { lock xrelease sub WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x31, 0xe8, 0x03                               }, { xacquire lock xor WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x31, 0xe8, 0x03                               }, { xacquire lock xor WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x31, 0xe8, 0x03                               }, { xrelease lock xor WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x31, 0xe8, 0x03                               }, { xrelease lock xor WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf2, 0x66, 0x81, 0x31, 0xe8, 0x03                               }, { lock xacquire xor WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf3, 0x66, 0x81, 0x31, 0xe8, 0x03                               }, { lock xrelease xor WORD [rcx],0x3e8                           }
testcase	{ 0xf2, 0xf0, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock adc DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock adc DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock adc DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock adc DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                         }, { lock xacquire adc DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                         }, { lock xrelease adc DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock add DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock add DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock add DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock add DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                         }, { lock xacquire add DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                         }, { lock xrelease add DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock and DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock and DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock and DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock and DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                         }, { lock xacquire and DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                         }, { lock xrelease and DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xc7, 0x01, 0x80, 0x96, 0x98, 0x00                               }, { xrelease mov DWORD [rcx],0x989680                            }
testcase	{ 0xf2, 0xf0, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock or DWORD [rcx],0x989680                        }
testcase	{ 0xf2, 0xf0, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock or DWORD [rcx],0x989680                        }
testcase	{ 0xf3, 0xf0, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock or DWORD [rcx],0x989680                        }
testcase	{ 0xf3, 0xf0, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock or DWORD [rcx],0x989680                        }
testcase	{ 0xf0, 0xf2, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                         }, { lock xacquire or DWORD [rcx],0x989680                        }
testcase	{ 0xf0, 0xf3, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                         }, { lock xrelease or DWORD [rcx],0x989680                        }
testcase	{ 0xf2, 0xf0, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock sbb DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock sbb DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock sbb DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock sbb DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                         }, { lock xacquire sbb DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                         }, { lock xrelease sbb DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock sub DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock sub DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock sub DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock sub DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                         }, { lock xacquire sub DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                         }, { lock xrelease sub DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock xor DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock xor DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock xor DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock xor DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                         }, { lock xacquire xor DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                         }, { lock xrelease xor DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock adc QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock adc QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock adc QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock adc QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x48, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                   }, { lock xacquire adc QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x48, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                   }, { lock xrelease adc QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock add QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock add QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock add QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock add QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x48, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                   }, { lock xacquire add QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x48, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                   }, { lock xrelease add QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock and QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock and QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock and QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock and QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x48, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                   }, { lock xacquire and QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x48, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                   }, { lock xrelease and QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0x48, 0xc7, 0x01, 0x80, 0x96, 0x98, 0x00                         }, { xrelease mov QWORD [rcx],0x989680                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock or QWORD [rcx],0x989680                        }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock or QWORD [rcx],0x989680                        }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock or QWORD [rcx],0x989680                        }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock or QWORD [rcx],0x989680                        }
testcase	{ 0xf0, 0xf2, 0x48, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                   }, { lock xacquire or QWORD [rcx],0x989680                        }
testcase	{ 0xf0, 0xf3, 0x48, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                   }, { lock xrelease or QWORD [rcx],0x989680                        }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock sbb QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock sbb QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock sbb QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock sbb QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x48, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                   }, { lock xacquire sbb QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x48, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                   }, { lock xrelease sbb QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock sub QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock sub QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock sub QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock sub QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x48, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                   }, { lock xacquire sub QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x48, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                   }, { lock xrelease sub QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock xor QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock xor QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock xor QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock xor QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x48, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                   }, { lock xacquire xor QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x48, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                   }, { lock xrelease xor QWORD [rcx],0x989680                       }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x11, 0x64                                     }, { xacquire lock adc WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x11, 0x64                                     }, { xacquire lock adc WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x11, 0x64                                     }, { xrelease lock adc WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x11, 0x64                                     }, { xrelease lock adc WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x83, 0x11, 0x64                                     }, { lock xacquire adc WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x83, 0x11, 0x64                                     }, { lock xrelease adc WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x01, 0x64                                     }, { xacquire lock add WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x01, 0x64                                     }, { xacquire lock add WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x01, 0x64                                     }, { xrelease lock add WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x01, 0x64                                     }, { xrelease lock add WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x83, 0x01, 0x64                                     }, { lock xacquire add WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x83, 0x01, 0x64                                     }, { lock xrelease add WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x21, 0x64                                     }, { xacquire lock and WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x21, 0x64                                     }, { xacquire lock and WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x21, 0x64                                     }, { xrelease lock and WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x21, 0x64                                     }, { xrelease lock and WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x83, 0x21, 0x64                                     }, { lock xacquire and WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x83, 0x21, 0x64                                     }, { lock xrelease and WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xba, 0x39, 0x64                               }, { xacquire lock btc WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xba, 0x39, 0x64                               }, { xacquire lock btc WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xba, 0x39, 0x64                               }, { xrelease lock btc WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xba, 0x39, 0x64                               }, { xrelease lock btc WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x0f, 0xba, 0x39, 0x64                               }, { lock xacquire btc WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x0f, 0xba, 0x39, 0x64                               }, { lock xrelease btc WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xba, 0x31, 0x64                               }, { xacquire lock btr WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xba, 0x31, 0x64                               }, { xacquire lock btr WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xba, 0x31, 0x64                               }, { xrelease lock btr WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xba, 0x31, 0x64                               }, { xrelease lock btr WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x0f, 0xba, 0x31, 0x64                               }, { lock xacquire btr WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x0f, 0xba, 0x31, 0x64                               }, { lock xrelease btr WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xba, 0x29, 0x64                               }, { xacquire lock bts WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xba, 0x29, 0x64                               }, { xacquire lock bts WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xba, 0x29, 0x64                               }, { xrelease lock bts WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xba, 0x29, 0x64                               }, { xrelease lock bts WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x0f, 0xba, 0x29, 0x64                               }, { lock xacquire bts WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x0f, 0xba, 0x29, 0x64                               }, { lock xrelease bts WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xc7, 0x01, 0x64, 0x00                                     }, { xrelease mov WORD [rcx],0x64                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x09, 0x64                                     }, { xacquire lock or WORD [rcx],0x64                             }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x09, 0x64                                     }, { xacquire lock or WORD [rcx],0x64                             }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x09, 0x64                                     }, { xrelease lock or WORD [rcx],0x64                             }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x09, 0x64                                     }, { xrelease lock or WORD [rcx],0x64                             }
testcase	{ 0xf0, 0xf2, 0x66, 0x83, 0x09, 0x64                                     }, { lock xacquire or WORD [rcx],0x64                             }
testcase	{ 0xf0, 0xf3, 0x66, 0x83, 0x09, 0x64                                     }, { lock xrelease or WORD [rcx],0x64                             }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x19, 0x64                                     }, { xacquire lock sbb WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x19, 0x64                                     }, { xacquire lock sbb WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x19, 0x64                                     }, { xrelease lock sbb WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x19, 0x64                                     }, { xrelease lock sbb WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x83, 0x19, 0x64                                     }, { lock xacquire sbb WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x83, 0x19, 0x64                                     }, { lock xrelease sbb WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x29, 0x64                                     }, { xacquire lock sub WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x29, 0x64                                     }, { xacquire lock sub WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x29, 0x64                                     }, { xrelease lock sub WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x29, 0x64                                     }, { xrelease lock sub WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x83, 0x29, 0x64                                     }, { lock xacquire sub WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x83, 0x29, 0x64                                     }, { lock xrelease sub WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x31, 0x64                                     }, { xacquire lock xor WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x31, 0x64                                     }, { xacquire lock xor WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x31, 0x64                                     }, { xrelease lock xor WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x31, 0x64                                     }, { xrelease lock xor WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x83, 0x31, 0x64                                     }, { lock xacquire xor WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x83, 0x31, 0x64                                     }, { lock xrelease xor WORD [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x83, 0x11, 0x64                                           }, { xacquire lock adc DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x11, 0x64                                           }, { xacquire lock adc DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x11, 0x64                                           }, { xrelease lock adc DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x11, 0x64                                           }, { xrelease lock adc DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x83, 0x11, 0x64                                           }, { lock xacquire adc DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x83, 0x11, 0x64                                           }, { lock xrelease adc DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x01, 0x64                                           }, { xacquire lock add DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x01, 0x64                                           }, { xacquire lock add DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x01, 0x64                                           }, { xrelease lock add DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x01, 0x64                                           }, { xrelease lock add DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x83, 0x01, 0x64                                           }, { lock xacquire add DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x83, 0x01, 0x64                                           }, { lock xrelease add DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x21, 0x64                                           }, { xacquire lock and DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x21, 0x64                                           }, { xacquire lock and DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x21, 0x64                                           }, { xrelease lock and DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x21, 0x64                                           }, { xrelease lock and DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x83, 0x21, 0x64                                           }, { lock xacquire and DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x83, 0x21, 0x64                                           }, { lock xrelease and DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x0f, 0xba, 0x39, 0x64                                     }, { xacquire lock btc DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x0f, 0xba, 0x39, 0x64                                     }, { xacquire lock btc DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x0f, 0xba, 0x39, 0x64                                     }, { xrelease lock btc DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x0f, 0xba, 0x39, 0x64                                     }, { xrelease lock btc DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x0f, 0xba, 0x39, 0x64                                     }, { lock xacquire btc DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x0f, 0xba, 0x39, 0x64                                     }, { lock xrelease btc DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x0f, 0xba, 0x31, 0x64                                     }, { xacquire lock btr DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x0f, 0xba, 0x31, 0x64                                     }, { xacquire lock btr DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x0f, 0xba, 0x31, 0x64                                     }, { xrelease lock btr DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x0f, 0xba, 0x31, 0x64                                     }, { xrelease lock btr DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x0f, 0xba, 0x31, 0x64                                     }, { lock xacquire btr DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x0f, 0xba, 0x31, 0x64                                     }, { lock xrelease btr DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x0f, 0xba, 0x29, 0x64                                     }, { xacquire lock bts DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x0f, 0xba, 0x29, 0x64                                     }, { xacquire lock bts DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x0f, 0xba, 0x29, 0x64                                     }, { xrelease lock bts DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x0f, 0xba, 0x29, 0x64                                     }, { xrelease lock bts DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x0f, 0xba, 0x29, 0x64                                     }, { lock xacquire bts DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x0f, 0xba, 0x29, 0x64                                     }, { lock xrelease bts DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xc7, 0x01, 0x64, 0x00, 0x00, 0x00                               }, { xrelease mov DWORD [rcx],0x64                                }
testcase	{ 0xf2, 0xf0, 0x83, 0x09, 0x64                                           }, { xacquire lock or DWORD [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x83, 0x09, 0x64                                           }, { xacquire lock or DWORD [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x83, 0x09, 0x64                                           }, { xrelease lock or DWORD [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x83, 0x09, 0x64                                           }, { xrelease lock or DWORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x83, 0x09, 0x64                                           }, { lock xacquire or DWORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x83, 0x09, 0x64                                           }, { lock xrelease or DWORD [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x83, 0x19, 0x64                                           }, { xacquire lock sbb DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x19, 0x64                                           }, { xacquire lock sbb DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x19, 0x64                                           }, { xrelease lock sbb DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x19, 0x64                                           }, { xrelease lock sbb DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x83, 0x19, 0x64                                           }, { lock xacquire sbb DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x83, 0x19, 0x64                                           }, { lock xrelease sbb DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x29, 0x64                                           }, { xacquire lock sub DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x29, 0x64                                           }, { xacquire lock sub DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x29, 0x64                                           }, { xrelease lock sub DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x29, 0x64                                           }, { xrelease lock sub DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x83, 0x29, 0x64                                           }, { lock xacquire sub DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x83, 0x29, 0x64                                           }, { lock xrelease sub DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x31, 0x64                                           }, { xacquire lock xor DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x31, 0x64                                           }, { xacquire lock xor DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x31, 0x64                                           }, { xrelease lock xor DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x31, 0x64                                           }, { xrelease lock xor DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x83, 0x31, 0x64                                           }, { lock xacquire xor DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x83, 0x31, 0x64                                           }, { lock xrelease xor DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x11, 0x64                                     }, { xacquire lock adc QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x11, 0x64                                     }, { xacquire lock adc QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x11, 0x64                                     }, { xrelease lock adc QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x11, 0x64                                     }, { xrelease lock adc QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x83, 0x11, 0x64                                     }, { lock xacquire adc QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x83, 0x11, 0x64                                     }, { lock xrelease adc QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x01, 0x64                                     }, { xacquire lock add QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x01, 0x64                                     }, { xacquire lock add QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x01, 0x64                                     }, { xrelease lock add QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x01, 0x64                                     }, { xrelease lock add QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x83, 0x01, 0x64                                     }, { lock xacquire add QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x83, 0x01, 0x64                                     }, { lock xrelease add QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x21, 0x64                                     }, { xacquire lock and QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x21, 0x64                                     }, { xacquire lock and QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x21, 0x64                                     }, { xrelease lock and QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x21, 0x64                                     }, { xrelease lock and QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x83, 0x21, 0x64                                     }, { lock xacquire and QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x83, 0x21, 0x64                                     }, { lock xrelease and QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xba, 0x39, 0x64                               }, { xacquire lock btc QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xba, 0x39, 0x64                               }, { xacquire lock btc QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xba, 0x39, 0x64                               }, { xrelease lock btc QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xba, 0x39, 0x64                               }, { xrelease lock btc QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x0f, 0xba, 0x39, 0x64                               }, { lock xacquire btc QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x0f, 0xba, 0x39, 0x64                               }, { lock xrelease btc QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xba, 0x31, 0x64                               }, { xacquire lock btr QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xba, 0x31, 0x64                               }, { xacquire lock btr QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xba, 0x31, 0x64                               }, { xrelease lock btr QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xba, 0x31, 0x64                               }, { xrelease lock btr QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x0f, 0xba, 0x31, 0x64                               }, { lock xacquire btr QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x0f, 0xba, 0x31, 0x64                               }, { lock xrelease btr QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xba, 0x29, 0x64                               }, { xacquire lock bts QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xba, 0x29, 0x64                               }, { xacquire lock bts QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xba, 0x29, 0x64                               }, { xrelease lock bts QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xba, 0x29, 0x64                               }, { xrelease lock bts QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x0f, 0xba, 0x29, 0x64                               }, { lock xacquire bts QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x0f, 0xba, 0x29, 0x64                               }, { lock xrelease bts QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0x48, 0xc7, 0x01, 0x64, 0x00, 0x00, 0x00                         }, { xrelease mov QWORD [rcx],0x64                                }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x09, 0x64                                     }, { xacquire lock or QWORD [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x09, 0x64                                     }, { xacquire lock or QWORD [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x09, 0x64                                     }, { xrelease lock or QWORD [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x09, 0x64                                     }, { xrelease lock or QWORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x83, 0x09, 0x64                                     }, { lock xacquire or QWORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x83, 0x09, 0x64                                     }, { lock xrelease or QWORD [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x19, 0x64                                     }, { xacquire lock sbb QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x19, 0x64                                     }, { xacquire lock sbb QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x19, 0x64                                     }, { xrelease lock sbb QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x19, 0x64                                     }, { xrelease lock sbb QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x83, 0x19, 0x64                                     }, { lock xacquire sbb QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x83, 0x19, 0x64                                     }, { lock xrelease sbb QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x29, 0x64                                     }, { xacquire lock sub QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x29, 0x64                                     }, { xacquire lock sub QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x29, 0x64                                     }, { xrelease lock sub QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x29, 0x64                                     }, { xrelease lock sub QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x83, 0x29, 0x64                                     }, { lock xacquire sub QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x83, 0x29, 0x64                                     }, { lock xrelease sub QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x31, 0x64                                     }, { xacquire lock xor QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x31, 0x64                                     }, { xacquire lock xor QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x31, 0x64                                     }, { xrelease lock xor QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x31, 0x64                                     }, { xrelease lock xor QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x83, 0x31, 0x64                                     }, { lock xacquire xor QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x83, 0x31, 0x64                                     }, { lock xrelease xor QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x80, 0x11, 0x64                                           }, { xacquire lock adc BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x11, 0x64                                           }, { xacquire lock adc BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x11, 0x64                                           }, { xrelease lock adc BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x11, 0x64                                           }, { xrelease lock adc BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x11, 0x64                                           }, { lock xacquire adc BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x11, 0x64                                           }, { lock xrelease adc BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x01, 0x64                                           }, { xacquire lock add BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x01, 0x64                                           }, { xacquire lock add BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x01, 0x64                                           }, { xrelease lock add BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x01, 0x64                                           }, { xrelease lock add BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x01, 0x64                                           }, { lock xacquire add BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x01, 0x64                                           }, { lock xrelease add BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x21, 0x64                                           }, { xacquire lock and BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x21, 0x64                                           }, { xacquire lock and BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x21, 0x64                                           }, { xrelease lock and BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x21, 0x64                                           }, { xrelease lock and BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x21, 0x64                                           }, { lock xacquire and BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x21, 0x64                                           }, { lock xrelease and BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xc6, 0x01, 0x64                                                 }, { xrelease mov BYTE [rcx],0x64                                 }
testcase	{ 0xf2, 0xf0, 0x80, 0x09, 0x64                                           }, { xacquire lock or BYTE [rcx],0x64                             }
testcase	{ 0xf2, 0xf0, 0x80, 0x09, 0x64                                           }, { xacquire lock or BYTE [rcx],0x64                             }
testcase	{ 0xf3, 0xf0, 0x80, 0x09, 0x64                                           }, { xrelease lock or BYTE [rcx],0x64                             }
testcase	{ 0xf3, 0xf0, 0x80, 0x09, 0x64                                           }, { xrelease lock or BYTE [rcx],0x64                             }
testcase	{ 0xf0, 0xf2, 0x80, 0x09, 0x64                                           }, { lock xacquire or BYTE [rcx],0x64                             }
testcase	{ 0xf0, 0xf3, 0x80, 0x09, 0x64                                           }, { lock xrelease or BYTE [rcx],0x64                             }
testcase	{ 0xf2, 0xf0, 0x80, 0x19, 0x64                                           }, { xacquire lock sbb BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x19, 0x64                                           }, { xacquire lock sbb BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x19, 0x64                                           }, { xrelease lock sbb BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x19, 0x64                                           }, { xrelease lock sbb BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x19, 0x64                                           }, { lock xacquire sbb BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x19, 0x64                                           }, { lock xrelease sbb BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x29, 0x64                                           }, { xacquire lock sub BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x29, 0x64                                           }, { xacquire lock sub BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x29, 0x64                                           }, { xrelease lock sub BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x29, 0x64                                           }, { xrelease lock sub BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x29, 0x64                                           }, { lock xacquire sub BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x29, 0x64                                           }, { lock xrelease sub BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x31, 0x64                                           }, { xacquire lock xor BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x31, 0x64                                           }, { xacquire lock xor BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x31, 0x64                                           }, { xrelease lock xor BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x31, 0x64                                           }, { xrelease lock xor BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x31, 0x64                                           }, { lock xacquire xor BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x31, 0x64                                           }, { lock xrelease xor BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x10, 0x01                                                 }, { xacquire lock adc BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x10, 0x01                                                 }, { xacquire lock adc BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x10, 0x01                                                 }, { xrelease lock adc BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x10, 0x01                                                 }, { xrelease lock adc BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf2, 0x10, 0x01                                                 }, { lock xacquire adc BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf3, 0x10, 0x01                                                 }, { lock xrelease adc BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x00, 0x01                                                 }, { xacquire lock add BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x00, 0x01                                                 }, { xacquire lock add BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x00, 0x01                                                 }, { xrelease lock add BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x00, 0x01                                                 }, { xrelease lock add BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf2, 0x00, 0x01                                                 }, { lock xacquire add BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf3, 0x00, 0x01                                                 }, { lock xrelease add BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x20, 0x01                                                 }, { xacquire lock and BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x20, 0x01                                                 }, { xacquire lock and BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x20, 0x01                                                 }, { xrelease lock and BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x20, 0x01                                                 }, { xrelease lock and BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf2, 0x20, 0x01                                                 }, { lock xacquire and BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf3, 0x20, 0x01                                                 }, { lock xrelease and BYTE [rcx],al                              }
testcase	{ 0xf3, 0x88, 0x01                                                       }, { xrelease mov BYTE [rcx],al                                   }
testcase	{ 0xf2, 0xf0, 0x08, 0x01                                                 }, { xacquire lock or BYTE [rcx],al                               }
testcase	{ 0xf2, 0xf0, 0x08, 0x01                                                 }, { xacquire lock or BYTE [rcx],al                               }
testcase	{ 0xf3, 0xf0, 0x08, 0x01                                                 }, { xrelease lock or BYTE [rcx],al                               }
testcase	{ 0xf3, 0xf0, 0x08, 0x01                                                 }, { xrelease lock or BYTE [rcx],al                               }
testcase	{ 0xf0, 0xf2, 0x08, 0x01                                                 }, { lock xacquire or BYTE [rcx],al                               }
testcase	{ 0xf0, 0xf3, 0x08, 0x01                                                 }, { lock xrelease or BYTE [rcx],al                               }
testcase	{ 0xf2, 0xf0, 0x18, 0x01                                                 }, { xacquire lock sbb BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x18, 0x01                                                 }, { xacquire lock sbb BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x18, 0x01                                                 }, { xrelease lock sbb BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x18, 0x01                                                 }, { xrelease lock sbb BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf2, 0x18, 0x01                                                 }, { lock xacquire sbb BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf3, 0x18, 0x01                                                 }, { lock xrelease sbb BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x28, 0x01                                                 }, { xacquire lock sub BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x28, 0x01                                                 }, { xacquire lock sub BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x28, 0x01                                                 }, { xrelease lock sub BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x28, 0x01                                                 }, { xrelease lock sub BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf2, 0x28, 0x01                                                 }, { lock xacquire sub BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf3, 0x28, 0x01                                                 }, { lock xrelease sub BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x86, 0x01                                                 }, { xacquire lock xchg BYTE [rcx],al                             }
testcase	{ 0xf2, 0xf0, 0x86, 0x01                                                 }, { xacquire lock xchg BYTE [rcx],al                             }
testcase	{ 0xf2, 0x86, 0x01                                                       }, { xacquire xchg BYTE [rcx],al                                  }
testcase	{ 0xf3, 0xf0, 0x86, 0x01                                                 }, { xrelease lock xchg BYTE [rcx],al                             }
testcase	{ 0xf3, 0xf0, 0x86, 0x01                                                 }, { xrelease lock xchg BYTE [rcx],al                             }
testcase	{ 0xf3, 0x86, 0x01                                                       }, { xrelease xchg BYTE [rcx],al                                  }
testcase	{ 0xf0, 0xf2, 0x86, 0x01                                                 }, { lock xacquire xchg BYTE [rcx],al                             }
testcase	{ 0xf0, 0xf3, 0x86, 0x01                                                 }, { lock xrelease xchg BYTE [rcx],al                             }
testcase	{ 0xf2, 0xf0, 0x30, 0x01                                                 }, { xacquire lock xor BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x30, 0x01                                                 }, { xacquire lock xor BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x30, 0x01                                                 }, { xrelease lock xor BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x30, 0x01                                                 }, { xrelease lock xor BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf2, 0x30, 0x01                                                 }, { lock xacquire xor BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf3, 0x30, 0x01                                                 }, { lock xrelease xor BYTE [rcx],al                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x11, 0x01                                           }, { xacquire lock adc WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x11, 0x01                                           }, { xacquire lock adc WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x11, 0x01                                           }, { xrelease lock adc WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x11, 0x01                                           }, { xrelease lock adc WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x11, 0x01                                           }, { lock xacquire adc WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x11, 0x01                                           }, { lock xrelease adc WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x01, 0x01                                           }, { xacquire lock add WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x01, 0x01                                           }, { xacquire lock add WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x01, 0x01                                           }, { xrelease lock add WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x01, 0x01                                           }, { xrelease lock add WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x01, 0x01                                           }, { lock xacquire add WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x01, 0x01                                           }, { lock xrelease add WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x21, 0x01                                           }, { xacquire lock and WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x21, 0x01                                           }, { xacquire lock and WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x21, 0x01                                           }, { xrelease lock and WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x21, 0x01                                           }, { xrelease lock and WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x21, 0x01                                           }, { lock xacquire and WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x21, 0x01                                           }, { lock xrelease and WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0x89, 0x01                                                 }, { xrelease mov WORD [rcx],ax                                   }
testcase	{ 0x66, 0xf2, 0xf0, 0x09, 0x01                                           }, { xacquire lock or WORD [rcx],ax                               }
testcase	{ 0x66, 0xf2, 0xf0, 0x09, 0x01                                           }, { xacquire lock or WORD [rcx],ax                               }
testcase	{ 0x66, 0xf3, 0xf0, 0x09, 0x01                                           }, { xrelease lock or WORD [rcx],ax                               }
testcase	{ 0x66, 0xf3, 0xf0, 0x09, 0x01                                           }, { xrelease lock or WORD [rcx],ax                               }
testcase	{ 0xf0, 0xf2, 0x66, 0x09, 0x01                                           }, { lock xacquire or WORD [rcx],ax                               }
testcase	{ 0xf0, 0xf3, 0x66, 0x09, 0x01                                           }, { lock xrelease or WORD [rcx],ax                               }
testcase	{ 0x66, 0xf2, 0xf0, 0x19, 0x01                                           }, { xacquire lock sbb WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x19, 0x01                                           }, { xacquire lock sbb WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x19, 0x01                                           }, { xrelease lock sbb WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x19, 0x01                                           }, { xrelease lock sbb WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x19, 0x01                                           }, { lock xacquire sbb WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x19, 0x01                                           }, { lock xrelease sbb WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x29, 0x01                                           }, { xacquire lock sub WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x29, 0x01                                           }, { xacquire lock sub WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x29, 0x01                                           }, { xrelease lock sub WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x29, 0x01                                           }, { xrelease lock sub WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x29, 0x01                                           }, { lock xacquire sub WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x29, 0x01                                           }, { lock xrelease sub WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x87, 0x01                                           }, { xacquire lock xchg WORD [rcx],ax                             }
testcase	{ 0x66, 0xf2, 0xf0, 0x87, 0x01                                           }, { xacquire lock xchg WORD [rcx],ax                             }
testcase	{ 0x66, 0xf2, 0x87, 0x01                                                 }, { xacquire xchg WORD [rcx],ax                                  }
testcase	{ 0x66, 0xf3, 0xf0, 0x87, 0x01                                           }, { xrelease lock xchg WORD [rcx],ax                             }
testcase	{ 0x66, 0xf3, 0xf0, 0x87, 0x01                                           }, { xrelease lock xchg WORD [rcx],ax                             }
testcase	{ 0x66, 0xf3, 0x87, 0x01                                                 }, { xrelease xchg WORD [rcx],ax                                  }
testcase	{ 0xf0, 0xf2, 0x66, 0x87, 0x01                                           }, { lock xacquire xchg WORD [rcx],ax                             }
testcase	{ 0xf0, 0xf3, 0x66, 0x87, 0x01                                           }, { lock xrelease xchg WORD [rcx],ax                             }
testcase	{ 0x66, 0xf2, 0xf0, 0x31, 0x01                                           }, { xacquire lock xor WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x31, 0x01                                           }, { xacquire lock xor WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x31, 0x01                                           }, { xrelease lock xor WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x31, 0x01                                           }, { xrelease lock xor WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x31, 0x01                                           }, { lock xacquire xor WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x31, 0x01                                           }, { lock xrelease xor WORD [rcx],ax                              }
testcase	{ 0xf2, 0xf0, 0x11, 0x01                                                 }, { xacquire lock adc DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x11, 0x01                                                 }, { xacquire lock adc DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x11, 0x01                                                 }, { xrelease lock adc DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x11, 0x01                                                 }, { xrelease lock adc DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x11, 0x01                                                 }, { lock xacquire adc DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x11, 0x01                                                 }, { lock xrelease adc DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x01, 0x01                                                 }, { xacquire lock add DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x01, 0x01                                                 }, { xacquire lock add DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x01, 0x01                                                 }, { xrelease lock add DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x01, 0x01                                                 }, { xrelease lock add DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x01, 0x01                                                 }, { lock xacquire add DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x01, 0x01                                                 }, { lock xrelease add DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x21, 0x01                                                 }, { xacquire lock and DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x21, 0x01                                                 }, { xacquire lock and DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x21, 0x01                                                 }, { xrelease lock and DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x21, 0x01                                                 }, { xrelease lock and DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x21, 0x01                                                 }, { lock xacquire and DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x21, 0x01                                                 }, { lock xrelease and DWORD [rcx],eax                            }
testcase	{ 0xf3, 0x89, 0x01                                                       }, { xrelease mov DWORD [rcx],eax                                 }
testcase	{ 0xf2, 0xf0, 0x09, 0x01                                                 }, { xacquire lock or DWORD [rcx],eax                             }
testcase	{ 0xf2, 0xf0, 0x09, 0x01                                                 }, { xacquire lock or DWORD [rcx],eax                             }
testcase	{ 0xf3, 0xf0, 0x09, 0x01                                                 }, { xrelease lock or DWORD [rcx],eax                             }
testcase	{ 0xf3, 0xf0, 0x09, 0x01                                                 }, { xrelease lock or DWORD [rcx],eax                             }
testcase	{ 0xf0, 0xf2, 0x09, 0x01                                                 }, { lock xacquire or DWORD [rcx],eax                             }
testcase	{ 0xf0, 0xf3, 0x09, 0x01                                                 }, { lock xrelease or DWORD [rcx],eax                             }
testcase	{ 0xf2, 0xf0, 0x19, 0x01                                                 }, { xacquire lock sbb DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x19, 0x01                                                 }, { xacquire lock sbb DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x19, 0x01                                                 }, { xrelease lock sbb DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x19, 0x01                                                 }, { xrelease lock sbb DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x19, 0x01                                                 }, { lock xacquire sbb DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x19, 0x01                                                 }, { lock xrelease sbb DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x29, 0x01                                                 }, { xacquire lock sub DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x29, 0x01                                                 }, { xacquire lock sub DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x29, 0x01                                                 }, { xrelease lock sub DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x29, 0x01                                                 }, { xrelease lock sub DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x29, 0x01                                                 }, { lock xacquire sub DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x29, 0x01                                                 }, { lock xrelease sub DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x87, 0x01                                                 }, { xacquire lock xchg DWORD [rcx],eax                           }
testcase	{ 0xf2, 0xf0, 0x87, 0x01                                                 }, { xacquire lock xchg DWORD [rcx],eax                           }
testcase	{ 0xf2, 0x87, 0x01                                                       }, { xacquire xchg DWORD [rcx],eax                                }
testcase	{ 0xf3, 0xf0, 0x87, 0x01                                                 }, { xrelease lock xchg DWORD [rcx],eax                           }
testcase	{ 0xf3, 0xf0, 0x87, 0x01                                                 }, { xrelease lock xchg DWORD [rcx],eax                           }
testcase	{ 0xf3, 0x87, 0x01                                                       }, { xrelease xchg DWORD [rcx],eax                                }
testcase	{ 0xf0, 0xf2, 0x87, 0x01                                                 }, { lock xacquire xchg DWORD [rcx],eax                           }
testcase	{ 0xf0, 0xf3, 0x87, 0x01                                                 }, { lock xrelease xchg DWORD [rcx],eax                           }
testcase	{ 0xf2, 0xf0, 0x31, 0x01                                                 }, { xacquire lock xor DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x31, 0x01                                                 }, { xacquire lock xor DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x31, 0x01                                                 }, { xrelease lock xor DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x31, 0x01                                                 }, { xrelease lock xor DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x31, 0x01                                                 }, { lock xacquire xor DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x31, 0x01                                                 }, { lock xrelease xor DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x11, 0x01                                           }, { xacquire lock adc QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x11, 0x01                                           }, { xacquire lock adc QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x11, 0x01                                           }, { xrelease lock adc QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x11, 0x01                                           }, { xrelease lock adc QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x11, 0x01                                           }, { lock xacquire adc QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x11, 0x01                                           }, { lock xrelease adc QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x01, 0x01                                           }, { xacquire lock add QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x01, 0x01                                           }, { xacquire lock add QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x01, 0x01                                           }, { xrelease lock add QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x01, 0x01                                           }, { xrelease lock add QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x01, 0x01                                           }, { lock xacquire add QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x01, 0x01                                           }, { lock xrelease add QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x21, 0x01                                           }, { xacquire lock and QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x21, 0x01                                           }, { xacquire lock and QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x21, 0x01                                           }, { xrelease lock and QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x21, 0x01                                           }, { xrelease lock and QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x21, 0x01                                           }, { lock xacquire and QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x21, 0x01                                           }, { lock xrelease and QWORD [rcx],rax                            }
testcase	{ 0xf3, 0x48, 0x89, 0x01                                                 }, { xrelease mov QWORD [rcx],rax                                 }
testcase	{ 0xf2, 0xf0, 0x48, 0x09, 0x01                                           }, { xacquire lock or QWORD [rcx],rax                             }
testcase	{ 0xf2, 0xf0, 0x48, 0x09, 0x01                                           }, { xacquire lock or QWORD [rcx],rax                             }
testcase	{ 0xf3, 0xf0, 0x48, 0x09, 0x01                                           }, { xrelease lock or QWORD [rcx],rax                             }
testcase	{ 0xf3, 0xf0, 0x48, 0x09, 0x01                                           }, { xrelease lock or QWORD [rcx],rax                             }
testcase	{ 0xf0, 0xf2, 0x48, 0x09, 0x01                                           }, { lock xacquire or QWORD [rcx],rax                             }
testcase	{ 0xf0, 0xf3, 0x48, 0x09, 0x01                                           }, { lock xrelease or QWORD [rcx],rax                             }
testcase	{ 0xf2, 0xf0, 0x48, 0x19, 0x01                                           }, { xacquire lock sbb QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x19, 0x01                                           }, { xacquire lock sbb QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x19, 0x01                                           }, { xrelease lock sbb QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x19, 0x01                                           }, { xrelease lock sbb QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x19, 0x01                                           }, { lock xacquire sbb QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x19, 0x01                                           }, { lock xrelease sbb QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x29, 0x01                                           }, { xacquire lock sub QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x29, 0x01                                           }, { xacquire lock sub QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x29, 0x01                                           }, { xrelease lock sub QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x29, 0x01                                           }, { xrelease lock sub QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x29, 0x01                                           }, { lock xacquire sub QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x29, 0x01                                           }, { lock xrelease sub QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x87, 0x01                                           }, { xacquire lock xchg QWORD [rcx],rax                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x87, 0x01                                           }, { xacquire lock xchg QWORD [rcx],rax                           }
testcase	{ 0xf2, 0x48, 0x87, 0x01                                                 }, { xacquire xchg QWORD [rcx],rax                                }
testcase	{ 0xf3, 0xf0, 0x48, 0x87, 0x01                                           }, { xrelease lock xchg QWORD [rcx],rax                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x87, 0x01                                           }, { xrelease lock xchg QWORD [rcx],rax                           }
testcase	{ 0xf3, 0x48, 0x87, 0x01                                                 }, { xrelease xchg QWORD [rcx],rax                                }
testcase	{ 0xf0, 0xf2, 0x48, 0x87, 0x01                                           }, { lock xacquire xchg QWORD [rcx],rax                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x87, 0x01                                           }, { lock xrelease xchg QWORD [rcx],rax                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x31, 0x01                                           }, { xacquire lock xor QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x31, 0x01                                           }, { xacquire lock xor QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x31, 0x01                                           }, { xrelease lock xor QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x31, 0x01                                           }, { xrelease lock xor QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x31, 0x01                                           }, { lock xacquire xor QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x31, 0x01                                           }, { lock xrelease xor QWORD [rcx],rax                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xbb, 0x01                                     }, { xacquire lock btc WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xbb, 0x01                                     }, { xacquire lock btc WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xbb, 0x01                                     }, { xrelease lock btc WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xbb, 0x01                                     }, { xrelease lock btc WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x0f, 0xbb, 0x01                                     }, { lock xacquire btc WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x0f, 0xbb, 0x01                                     }, { lock xrelease btc WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xb3, 0x01                                     }, { xacquire lock btr WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xb3, 0x01                                     }, { xacquire lock btr WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xb3, 0x01                                     }, { xrelease lock btr WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xb3, 0x01                                     }, { xrelease lock btr WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x0f, 0xb3, 0x01                                     }, { lock xacquire btr WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x0f, 0xb3, 0x01                                     }, { lock xrelease btr WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xab, 0x01                                     }, { xacquire lock bts WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xab, 0x01                                     }, { xacquire lock bts WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xab, 0x01                                     }, { xrelease lock bts WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xab, 0x01                                     }, { xrelease lock bts WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x0f, 0xab, 0x01                                     }, { lock xacquire bts WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x0f, 0xab, 0x01                                     }, { lock xrelease bts WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xb1, 0x01                                     }, { xacquire lock cmpxchg WORD [rcx],ax                          }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xb1, 0x01                                     }, { xacquire lock cmpxchg WORD [rcx],ax                          }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xb1, 0x01                                     }, { xrelease lock cmpxchg WORD [rcx],ax                          }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xb1, 0x01                                     }, { xrelease lock cmpxchg WORD [rcx],ax                          }
testcase	{ 0xf0, 0xf2, 0x66, 0x0f, 0xb1, 0x01                                     }, { lock xacquire cmpxchg WORD [rcx],ax                          }
testcase	{ 0xf0, 0xf3, 0x66, 0x0f, 0xb1, 0x01                                     }, { lock xrelease cmpxchg WORD [rcx],ax                          }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xc1, 0x01                                     }, { xacquire lock xadd WORD [rcx],ax                             }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xc1, 0x01                                     }, { xacquire lock xadd WORD [rcx],ax                             }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xc1, 0x01                                     }, { xrelease lock xadd WORD [rcx],ax                             }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xc1, 0x01                                     }, { xrelease lock xadd WORD [rcx],ax                             }
testcase	{ 0xf0, 0xf2, 0x66, 0x0f, 0xc1, 0x01                                     }, { lock xacquire xadd WORD [rcx],ax                             }
testcase	{ 0xf0, 0xf3, 0x66, 0x0f, 0xc1, 0x01                                     }, { lock xrelease xadd WORD [rcx],ax                             }
testcase	{ 0xf2, 0xf0, 0x0f, 0xbb, 0x01                                           }, { xacquire lock btc DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x0f, 0xbb, 0x01                                           }, { xacquire lock btc DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x0f, 0xbb, 0x01                                           }, { xrelease lock btc DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x0f, 0xbb, 0x01                                           }, { xrelease lock btc DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x0f, 0xbb, 0x01                                           }, { lock xacquire btc DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x0f, 0xbb, 0x01                                           }, { lock xrelease btc DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x0f, 0xb3, 0x01                                           }, { xacquire lock btr DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x0f, 0xb3, 0x01                                           }, { xacquire lock btr DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x0f, 0xb3, 0x01                                           }, { xrelease lock btr DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x0f, 0xb3, 0x01                                           }, { xrelease lock btr DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x0f, 0xb3, 0x01                                           }, { lock xacquire btr DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x0f, 0xb3, 0x01                                           }, { lock xrelease btr DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x0f, 0xab, 0x01                                           }, { xacquire lock bts DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x0f, 0xab, 0x01                                           }, { xacquire lock bts DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x0f, 0xab, 0x01                                           }, { xrelease lock bts DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x0f, 0xab, 0x01                                           }, { xrelease lock bts DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x0f, 0xab, 0x01                                           }, { lock xacquire bts DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x0f, 0xab, 0x01                                           }, { lock xrelease bts DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x0f, 0xb1, 0x01                                           }, { xacquire lock cmpxchg DWORD [rcx],eax                        }
testcase	{ 0xf2, 0xf0, 0x0f, 0xb1, 0x01                                           }, { xacquire lock cmpxchg DWORD [rcx],eax                        }
testcase	{ 0xf3, 0xf0, 0x0f, 0xb1, 0x01                                           }, { xrelease lock cmpxchg DWORD [rcx],eax                        }
testcase	{ 0xf3, 0xf0, 0x0f, 0xb1, 0x01                                           }, { xrelease lock cmpxchg DWORD [rcx],eax                        }
testcase	{ 0xf0, 0xf2, 0x0f, 0xb1, 0x01                                           }, { lock xacquire cmpxchg DWORD [rcx],eax                        }
testcase	{ 0xf0, 0xf3, 0x0f, 0xb1, 0x01                                           }, { lock xrelease cmpxchg DWORD [rcx],eax                        }
testcase	{ 0xf2, 0xf0, 0x0f, 0xc1, 0x01                                           }, { xacquire lock xadd DWORD [rcx],eax                           }
testcase	{ 0xf2, 0xf0, 0x0f, 0xc1, 0x01                                           }, { xacquire lock xadd DWORD [rcx],eax                           }
testcase	{ 0xf3, 0xf0, 0x0f, 0xc1, 0x01                                           }, { xrelease lock xadd DWORD [rcx],eax                           }
testcase	{ 0xf3, 0xf0, 0x0f, 0xc1, 0x01                                           }, { xrelease lock xadd DWORD [rcx],eax                           }
testcase	{ 0xf0, 0xf2, 0x0f, 0xc1, 0x01                                           }, { lock xacquire xadd DWORD [rcx],eax                           }
testcase	{ 0xf0, 0xf3, 0x0f, 0xc1, 0x01                                           }, { lock xrelease xadd DWORD [rcx],eax                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xbb, 0x01                                     }, { xacquire lock btc QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xbb, 0x01                                     }, { xacquire lock btc QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xbb, 0x01                                     }, { xrelease lock btc QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xbb, 0x01                                     }, { xrelease lock btc QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x0f, 0xbb, 0x01                                     }, { lock xacquire btc QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x0f, 0xbb, 0x01                                     }, { lock xrelease btc QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xb3, 0x01                                     }, { xacquire lock btr QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xb3, 0x01                                     }, { xacquire lock btr QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xb3, 0x01                                     }, { xrelease lock btr QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xb3, 0x01                                     }, { xrelease lock btr QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x0f, 0xb3, 0x01                                     }, { lock xacquire btr QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x0f, 0xb3, 0x01                                     }, { lock xrelease btr QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xab, 0x01                                     }, { xacquire lock bts QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xab, 0x01                                     }, { xacquire lock bts QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xab, 0x01                                     }, { xrelease lock bts QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xab, 0x01                                     }, { xrelease lock bts QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x0f, 0xab, 0x01                                     }, { lock xacquire bts QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x0f, 0xab, 0x01                                     }, { lock xrelease bts QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xb1, 0x01                                     }, { xacquire lock cmpxchg QWORD [rcx],rax                        }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xb1, 0x01                                     }, { xacquire lock cmpxchg QWORD [rcx],rax                        }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xb1, 0x01                                     }, { xrelease lock cmpxchg QWORD [rcx],rax                        }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xb1, 0x01                                     }, { xrelease lock cmpxchg QWORD [rcx],rax                        }
testcase	{ 0xf0, 0xf2, 0x48, 0x0f, 0xb1, 0x01                                     }, { lock xacquire cmpxchg QWORD [rcx],rax                        }
testcase	{ 0xf0, 0xf3, 0x48, 0x0f, 0xb1, 0x01                                     }, { lock xrelease cmpxchg QWORD [rcx],rax                        }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xc1, 0x01                                     }, { xacquire lock xadd QWORD [rcx],rax                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xc1, 0x01                                     }, { xacquire lock xadd QWORD [rcx],rax                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xc1, 0x01                                     }, { xrelease lock xadd QWORD [rcx],rax                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xc1, 0x01                                     }, { xrelease lock xadd QWORD [rcx],rax                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x0f, 0xc1, 0x01                                     }, { lock xacquire xadd QWORD [rcx],rax                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x0f, 0xc1, 0x01                                     }, { lock xrelease xadd QWORD [rcx],rax                           }
testcase	{ 0xf2, 0xf0, 0xfe, 0x09                                                 }, { xacquire lock dec BYTE [rcx]                                 }
testcase	{ 0xf2, 0xf0, 0xfe, 0x09                                                 }, { xacquire lock dec BYTE [rcx]                                 }
testcase	{ 0xf3, 0xf0, 0xfe, 0x09                                                 }, { xrelease lock dec BYTE [rcx]                                 }
testcase	{ 0xf3, 0xf0, 0xfe, 0x09                                                 }, { xrelease lock dec BYTE [rcx]                                 }
testcase	{ 0xf0, 0xf2, 0xfe, 0x09                                                 }, { lock xacquire dec BYTE [rcx]                                 }
testcase	{ 0xf0, 0xf3, 0xfe, 0x09                                                 }, { lock xrelease dec BYTE [rcx]                                 }
testcase	{ 0xf2, 0xf0, 0xfe, 0x01                                                 }, { xacquire lock inc BYTE [rcx]                                 }
testcase	{ 0xf2, 0xf0, 0xfe, 0x01                                                 }, { xacquire lock inc BYTE [rcx]                                 }
testcase	{ 0xf3, 0xf0, 0xfe, 0x01                                                 }, { xrelease lock inc BYTE [rcx]                                 }
testcase	{ 0xf3, 0xf0, 0xfe, 0x01                                                 }, { xrelease lock inc BYTE [rcx]                                 }
testcase	{ 0xf0, 0xf2, 0xfe, 0x01                                                 }, { lock xacquire inc BYTE [rcx]                                 }
testcase	{ 0xf0, 0xf3, 0xfe, 0x01                                                 }, { lock xrelease inc BYTE [rcx]                                 }
testcase	{ 0xf2, 0xf0, 0xf6, 0x19                                                 }, { xacquire lock neg BYTE [rcx]                                 }
testcase	{ 0xf2, 0xf0, 0xf6, 0x19                                                 }, { xacquire lock neg BYTE [rcx]                                 }
testcase	{ 0xf3, 0xf0, 0xf6, 0x19                                                 }, { xrelease lock neg BYTE [rcx]                                 }
testcase	{ 0xf3, 0xf0, 0xf6, 0x19                                                 }, { xrelease lock neg BYTE [rcx]                                 }
testcase	{ 0xf0, 0xf2, 0xf6, 0x19                                                 }, { lock xacquire neg BYTE [rcx]                                 }
testcase	{ 0xf0, 0xf3, 0xf6, 0x19                                                 }, { lock xrelease neg BYTE [rcx]                                 }
testcase	{ 0xf2, 0xf0, 0xf6, 0x11                                                 }, { xacquire lock not BYTE [rcx]                                 }
testcase	{ 0xf2, 0xf0, 0xf6, 0x11                                                 }, { xacquire lock not BYTE [rcx]                                 }
testcase	{ 0xf3, 0xf0, 0xf6, 0x11                                                 }, { xrelease lock not BYTE [rcx]                                 }
testcase	{ 0xf3, 0xf0, 0xf6, 0x11                                                 }, { xrelease lock not BYTE [rcx]                                 }
testcase	{ 0xf0, 0xf2, 0xf6, 0x11                                                 }, { lock xacquire not BYTE [rcx]                                 }
testcase	{ 0xf0, 0xf3, 0xf6, 0x11                                                 }, { lock xrelease not BYTE [rcx]                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0xff, 0x09                                           }, { xacquire lock dec WORD [rcx]                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0xff, 0x09                                           }, { xacquire lock dec WORD [rcx]                                 }
testcase	{ 0x66, 0xf3, 0xf0, 0xff, 0x09                                           }, { xrelease lock dec WORD [rcx]                                 }
testcase	{ 0x66, 0xf3, 0xf0, 0xff, 0x09                                           }, { xrelease lock dec WORD [rcx]                                 }
testcase	{ 0xf0, 0xf2, 0x66, 0xff, 0x09                                           }, { lock xacquire dec WORD [rcx]                                 }
testcase	{ 0xf0, 0xf3, 0x66, 0xff, 0x09                                           }, { lock xrelease dec WORD [rcx]                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0xff, 0x01                                           }, { xacquire lock inc WORD [rcx]                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0xff, 0x01                                           }, { xacquire lock inc WORD [rcx]                                 }
testcase	{ 0x66, 0xf3, 0xf0, 0xff, 0x01                                           }, { xrelease lock inc WORD [rcx]                                 }
testcase	{ 0x66, 0xf3, 0xf0, 0xff, 0x01                                           }, { xrelease lock inc WORD [rcx]                                 }
testcase	{ 0xf0, 0xf2, 0x66, 0xff, 0x01                                           }, { lock xacquire inc WORD [rcx]                                 }
testcase	{ 0xf0, 0xf3, 0x66, 0xff, 0x01                                           }, { lock xrelease inc WORD [rcx]                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0xf7, 0x19                                           }, { xacquire lock neg WORD [rcx]                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0xf7, 0x19                                           }, { xacquire lock neg WORD [rcx]                                 }
testcase	{ 0x66, 0xf3, 0xf0, 0xf7, 0x19                                           }, { xrelease lock neg WORD [rcx]                                 }
testcase	{ 0x66, 0xf3, 0xf0, 0xf7, 0x19                                           }, { xrelease lock neg WORD [rcx]                                 }
testcase	{ 0xf0, 0xf2, 0x66, 0xf7, 0x19                                           }, { lock xacquire neg WORD [rcx]                                 }
testcase	{ 0xf0, 0xf3, 0x66, 0xf7, 0x19                                           }, { lock xrelease neg WORD [rcx]                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0xf7, 0x11                                           }, { xacquire lock not WORD [rcx]                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0xf7, 0x11                                           }, { xacquire lock not WORD [rcx]                                 }
testcase	{ 0x66, 0xf3, 0xf0, 0xf7, 0x11                                           }, { xrelease lock not WORD [rcx]                                 }
testcase	{ 0x66, 0xf3, 0xf0, 0xf7, 0x11                                           }, { xrelease lock not WORD [rcx]                                 }
testcase	{ 0xf0, 0xf2, 0x66, 0xf7, 0x11                                           }, { lock xacquire not WORD [rcx]                                 }
testcase	{ 0xf0, 0xf3, 0x66, 0xf7, 0x11                                           }, { lock xrelease not WORD [rcx]                                 }
testcase	{ 0xf2, 0xf0, 0xff, 0x09                                                 }, { xacquire lock dec DWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0xff, 0x09                                                 }, { xacquire lock dec DWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0xff, 0x09                                                 }, { xrelease lock dec DWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0xff, 0x09                                                 }, { xrelease lock dec DWORD [rcx]                                }
testcase	{ 0xf0, 0xf2, 0xff, 0x09                                                 }, { lock xacquire dec DWORD [rcx]                                }
testcase	{ 0xf0, 0xf3, 0xff, 0x09                                                 }, { lock xrelease dec DWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0xff, 0x01                                                 }, { xacquire lock inc DWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0xff, 0x01                                                 }, { xacquire lock inc DWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0xff, 0x01                                                 }, { xrelease lock inc DWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0xff, 0x01                                                 }, { xrelease lock inc DWORD [rcx]                                }
testcase	{ 0xf0, 0xf2, 0xff, 0x01                                                 }, { lock xacquire inc DWORD [rcx]                                }
testcase	{ 0xf0, 0xf3, 0xff, 0x01                                                 }, { lock xrelease inc DWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0xf7, 0x19                                                 }, { xacquire lock neg DWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0xf7, 0x19                                                 }, { xacquire lock neg DWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0xf7, 0x19                                                 }, { xrelease lock neg DWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0xf7, 0x19                                                 }, { xrelease lock neg DWORD [rcx]                                }
testcase	{ 0xf0, 0xf2, 0xf7, 0x19                                                 }, { lock xacquire neg DWORD [rcx]                                }
testcase	{ 0xf0, 0xf3, 0xf7, 0x19                                                 }, { lock xrelease neg DWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0xf7, 0x11                                                 }, { xacquire lock not DWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0xf7, 0x11                                                 }, { xacquire lock not DWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0xf7, 0x11                                                 }, { xrelease lock not DWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0xf7, 0x11                                                 }, { xrelease lock not DWORD [rcx]                                }
testcase	{ 0xf0, 0xf2, 0xf7, 0x11                                                 }, { lock xacquire not DWORD [rcx]                                }
testcase	{ 0xf0, 0xf3, 0xf7, 0x11                                                 }, { lock xrelease not DWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x48, 0xff, 0x09                                           }, { xacquire lock dec QWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x48, 0xff, 0x09                                           }, { xacquire lock dec QWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0x48, 0xff, 0x09                                           }, { xrelease lock dec QWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0x48, 0xff, 0x09                                           }, { xrelease lock dec QWORD [rcx]                                }
testcase	{ 0xf0, 0xf2, 0x48, 0xff, 0x09                                           }, { lock xacquire dec QWORD [rcx]                                }
testcase	{ 0xf0, 0xf3, 0x48, 0xff, 0x09                                           }, { lock xrelease dec QWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x48, 0xff, 0x01                                           }, { xacquire lock inc QWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x48, 0xff, 0x01                                           }, { xacquire lock inc QWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0x48, 0xff, 0x01                                           }, { xrelease lock inc QWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0x48, 0xff, 0x01                                           }, { xrelease lock inc QWORD [rcx]                                }
testcase	{ 0xf0, 0xf2, 0x48, 0xff, 0x01                                           }, { lock xacquire inc QWORD [rcx]                                }
testcase	{ 0xf0, 0xf3, 0x48, 0xff, 0x01                                           }, { lock xrelease inc QWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x48, 0xf7, 0x19                                           }, { xacquire lock neg QWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x48, 0xf7, 0x19                                           }, { xacquire lock neg QWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0x48, 0xf7, 0x19                                           }, { xrelease lock neg QWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0x48, 0xf7, 0x19                                           }, { xrelease lock neg QWORD [rcx]                                }
testcase	{ 0xf0, 0xf2, 0x48, 0xf7, 0x19                                           }, { lock xacquire neg QWORD [rcx]                                }
testcase	{ 0xf0, 0xf3, 0x48, 0xf7, 0x19                                           }, { lock xrelease neg QWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x48, 0xf7, 0x11                                           }, { xacquire lock not QWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x48, 0xf7, 0x11                                           }, { xacquire lock not QWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0x48, 0xf7, 0x11                                           }, { xrelease lock not QWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0x48, 0xf7, 0x11                                           }, { xrelease lock not QWORD [rcx]                                }
testcase	{ 0xf0, 0xf2, 0x48, 0xf7, 0x11                                           }, { lock xacquire not QWORD [rcx]                                }
testcase	{ 0xf0, 0xf3, 0x48, 0xf7, 0x11                                           }, { lock xrelease not QWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x0f, 0xc7, 0x09                                           }, { xacquire lock cmpxchg8b QWORD [rcx]                          }
testcase	{ 0xf2, 0xf0, 0x0f, 0xc7, 0x09                                           }, { xacquire lock cmpxchg8b QWORD [rcx]                          }
testcase	{ 0xf3, 0xf0, 0x0f, 0xc7, 0x09                                           }, { xrelease lock cmpxchg8b QWORD [rcx]                          }
testcase	{ 0xf3, 0xf0, 0x0f, 0xc7, 0x09                                           }, { xrelease lock cmpxchg8b QWORD [rcx]                          }
testcase	{ 0xf0, 0xf2, 0x0f, 0xc7, 0x09                                           }, { lock xacquire cmpxchg8b QWORD [rcx]                          }
testcase	{ 0xf0, 0xf3, 0x0f, 0xc7, 0x09                                           }, { lock xrelease cmpxchg8b QWORD [rcx]                          }
testcase	{ 0xf2, 0xf0, 0x0f, 0xb0, 0x09                                           }, { xacquire lock cmpxchg BYTE [rcx],cl                          }
testcase	{ 0xf2, 0xf0, 0x0f, 0xb0, 0x09                                           }, { xacquire lock cmpxchg BYTE [rcx],cl                          }
testcase	{ 0xf3, 0xf0, 0x0f, 0xb0, 0x09                                           }, { xrelease lock cmpxchg BYTE [rcx],cl                          }
testcase	{ 0xf3, 0xf0, 0x0f, 0xb0, 0x09                                           }, { xrelease lock cmpxchg BYTE [rcx],cl                          }
testcase	{ 0xf0, 0xf2, 0x0f, 0xb0, 0x09                                           }, { lock xacquire cmpxchg BYTE [rcx],cl                          }
testcase	{ 0xf0, 0xf3, 0x0f, 0xb0, 0x09                                           }, { lock xrelease cmpxchg BYTE [rcx],cl                          }
testcase	{ 0xf2, 0xf0, 0x0f, 0xc0, 0x09                                           }, { xacquire lock xadd BYTE [rcx],cl                             }
testcase	{ 0xf2, 0xf0, 0x0f, 0xc0, 0x09                                           }, { xacquire lock xadd BYTE [rcx],cl                             }
testcase	{ 0xf3, 0xf0, 0x0f, 0xc0, 0x09                                           }, { xrelease lock xadd BYTE [rcx],cl                             }
testcase	{ 0xf3, 0xf0, 0x0f, 0xc0, 0x09                                           }, { xrelease lock xadd BYTE [rcx],cl                             }
testcase	{ 0xf0, 0xf2, 0x0f, 0xc0, 0x09                                           }, { lock xacquire xadd BYTE [rcx],cl                             }
testcase	{ 0xf0, 0xf3, 0x0f, 0xc0, 0x09                                           }, { lock xrelease xadd BYTE [rcx],cl                             }
testcase	{ 0xf2, 0xf0, 0x80, 0x11, 0x64                                           }, { xacquire lock adc BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x11, 0x64                                           }, { xacquire lock adc BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x11, 0x64                                           }, { xrelease lock adc BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x11, 0x64                                           }, { xrelease lock adc BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x11, 0x64                                           }, { lock xacquire adc BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x11, 0x64                                           }, { lock xrelease adc BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x01, 0x64                                           }, { xacquire lock add BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x01, 0x64                                           }, { xacquire lock add BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x01, 0x64                                           }, { xrelease lock add BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x01, 0x64                                           }, { xrelease lock add BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x01, 0x64                                           }, { lock xacquire add BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x01, 0x64                                           }, { lock xrelease add BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x21, 0x64                                           }, { xacquire lock and BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x21, 0x64                                           }, { xacquire lock and BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x21, 0x64                                           }, { xrelease lock and BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x21, 0x64                                           }, { xrelease lock and BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x21, 0x64                                           }, { lock xacquire and BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x21, 0x64                                           }, { lock xrelease and BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xc6, 0x01, 0x64                                                 }, { xrelease mov BYTE [rcx],0x64                                 }
testcase	{ 0xf2, 0xf0, 0x80, 0x09, 0x64                                           }, { xacquire lock or BYTE [rcx],0x64                             }
testcase	{ 0xf2, 0xf0, 0x80, 0x09, 0x64                                           }, { xacquire lock or BYTE [rcx],0x64                             }
testcase	{ 0xf3, 0xf0, 0x80, 0x09, 0x64                                           }, { xrelease lock or BYTE [rcx],0x64                             }
testcase	{ 0xf3, 0xf0, 0x80, 0x09, 0x64                                           }, { xrelease lock or BYTE [rcx],0x64                             }
testcase	{ 0xf0, 0xf2, 0x80, 0x09, 0x64                                           }, { lock xacquire or BYTE [rcx],0x64                             }
testcase	{ 0xf0, 0xf3, 0x80, 0x09, 0x64                                           }, { lock xrelease or BYTE [rcx],0x64                             }
testcase	{ 0xf2, 0xf0, 0x80, 0x19, 0x64                                           }, { xacquire lock sbb BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x19, 0x64                                           }, { xacquire lock sbb BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x19, 0x64                                           }, { xrelease lock sbb BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x19, 0x64                                           }, { xrelease lock sbb BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x19, 0x64                                           }, { lock xacquire sbb BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x19, 0x64                                           }, { lock xrelease sbb BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x29, 0x64                                           }, { xacquire lock sub BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x29, 0x64                                           }, { xacquire lock sub BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x29, 0x64                                           }, { xrelease lock sub BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x29, 0x64                                           }, { xrelease lock sub BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x29, 0x64                                           }, { lock xacquire sub BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x29, 0x64                                           }, { lock xrelease sub BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x31, 0x64                                           }, { xacquire lock xor BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x31, 0x64                                           }, { xacquire lock xor BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x31, 0x64                                           }, { xrelease lock xor BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x31, 0x64                                           }, { xrelease lock xor BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x31, 0x64                                           }, { lock xacquire xor BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x31, 0x64                                           }, { lock xrelease xor BYTE [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x11, 0xe8, 0x03                               }, { xacquire lock adc WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x11, 0xe8, 0x03                               }, { xacquire lock adc WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x11, 0xe8, 0x03                               }, { xrelease lock adc WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x11, 0xe8, 0x03                               }, { xrelease lock adc WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf2, 0x66, 0x81, 0x11, 0xe8, 0x03                               }, { lock xacquire adc WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf3, 0x66, 0x81, 0x11, 0xe8, 0x03                               }, { lock xrelease adc WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x01, 0xe8, 0x03                               }, { xacquire lock add WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x01, 0xe8, 0x03                               }, { xacquire lock add WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x01, 0xe8, 0x03                               }, { xrelease lock add WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x01, 0xe8, 0x03                               }, { xrelease lock add WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf2, 0x66, 0x81, 0x01, 0xe8, 0x03                               }, { lock xacquire add WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf3, 0x66, 0x81, 0x01, 0xe8, 0x03                               }, { lock xrelease add WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x21, 0xe8, 0x03                               }, { xacquire lock and WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x21, 0xe8, 0x03                               }, { xacquire lock and WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x21, 0xe8, 0x03                               }, { xrelease lock and WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x21, 0xe8, 0x03                               }, { xrelease lock and WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf2, 0x66, 0x81, 0x21, 0xe8, 0x03                               }, { lock xacquire and WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf3, 0x66, 0x81, 0x21, 0xe8, 0x03                               }, { lock xrelease and WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xc7, 0x01, 0xe8, 0x03                                     }, { xrelease mov WORD [rcx],0x3e8                                }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x09, 0xe8, 0x03                               }, { xacquire lock or WORD [rcx],0x3e8                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x09, 0xe8, 0x03                               }, { xacquire lock or WORD [rcx],0x3e8                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x09, 0xe8, 0x03                               }, { xrelease lock or WORD [rcx],0x3e8                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x09, 0xe8, 0x03                               }, { xrelease lock or WORD [rcx],0x3e8                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x81, 0x09, 0xe8, 0x03                               }, { lock xacquire or WORD [rcx],0x3e8                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x81, 0x09, 0xe8, 0x03                               }, { lock xrelease or WORD [rcx],0x3e8                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x19, 0xe8, 0x03                               }, { xacquire lock sbb WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x19, 0xe8, 0x03                               }, { xacquire lock sbb WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x19, 0xe8, 0x03                               }, { xrelease lock sbb WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x19, 0xe8, 0x03                               }, { xrelease lock sbb WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf2, 0x66, 0x81, 0x19, 0xe8, 0x03                               }, { lock xacquire sbb WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf3, 0x66, 0x81, 0x19, 0xe8, 0x03                               }, { lock xrelease sbb WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x29, 0xe8, 0x03                               }, { xacquire lock sub WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x29, 0xe8, 0x03                               }, { xacquire lock sub WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x29, 0xe8, 0x03                               }, { xrelease lock sub WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x29, 0xe8, 0x03                               }, { xrelease lock sub WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf2, 0x66, 0x81, 0x29, 0xe8, 0x03                               }, { lock xacquire sub WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf3, 0x66, 0x81, 0x29, 0xe8, 0x03                               }, { lock xrelease sub WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x31, 0xe8, 0x03                               }, { xacquire lock xor WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf2, 0xf0, 0x81, 0x31, 0xe8, 0x03                               }, { xacquire lock xor WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x31, 0xe8, 0x03                               }, { xrelease lock xor WORD [rcx],0x3e8                           }
testcase	{ 0x66, 0xf3, 0xf0, 0x81, 0x31, 0xe8, 0x03                               }, { xrelease lock xor WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf2, 0x66, 0x81, 0x31, 0xe8, 0x03                               }, { lock xacquire xor WORD [rcx],0x3e8                           }
testcase	{ 0xf0, 0xf3, 0x66, 0x81, 0x31, 0xe8, 0x03                               }, { lock xrelease xor WORD [rcx],0x3e8                           }
testcase	{ 0xf2, 0xf0, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock adc DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock adc DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock adc DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock adc DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                         }, { lock xacquire adc DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                         }, { lock xrelease adc DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock add DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock add DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock add DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock add DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                         }, { lock xacquire add DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                         }, { lock xrelease add DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock and DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock and DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock and DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock and DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                         }, { lock xacquire and DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                         }, { lock xrelease and DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xc7, 0x01, 0x80, 0x96, 0x98, 0x00                               }, { xrelease mov DWORD [rcx],0x989680                            }
testcase	{ 0xf2, 0xf0, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock or DWORD [rcx],0x989680                        }
testcase	{ 0xf2, 0xf0, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock or DWORD [rcx],0x989680                        }
testcase	{ 0xf3, 0xf0, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock or DWORD [rcx],0x989680                        }
testcase	{ 0xf3, 0xf0, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock or DWORD [rcx],0x989680                        }
testcase	{ 0xf0, 0xf2, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                         }, { lock xacquire or DWORD [rcx],0x989680                        }
testcase	{ 0xf0, 0xf3, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                         }, { lock xrelease or DWORD [rcx],0x989680                        }
testcase	{ 0xf2, 0xf0, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock sbb DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock sbb DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock sbb DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock sbb DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                         }, { lock xacquire sbb DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                         }, { lock xrelease sbb DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock sub DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock sub DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock sub DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock sub DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                         }, { lock xacquire sub DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                         }, { lock xrelease sub DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock xor DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                         }, { xacquire lock xor DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock xor DWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                         }, { xrelease lock xor DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                         }, { lock xacquire xor DWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                         }, { lock xrelease xor DWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock adc QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock adc QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock adc QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock adc QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x48, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                   }, { lock xacquire adc QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x48, 0x81, 0x11, 0x80, 0x96, 0x98, 0x00                   }, { lock xrelease adc QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock add QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock add QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock add QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock add QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x48, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                   }, { lock xacquire add QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x48, 0x81, 0x01, 0x80, 0x96, 0x98, 0x00                   }, { lock xrelease add QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock and QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock and QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock and QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock and QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x48, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                   }, { lock xacquire and QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x48, 0x81, 0x21, 0x80, 0x96, 0x98, 0x00                   }, { lock xrelease and QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0x48, 0xc7, 0x01, 0x80, 0x96, 0x98, 0x00                         }, { xrelease mov QWORD [rcx],0x989680                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock or QWORD [rcx],0x989680                        }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock or QWORD [rcx],0x989680                        }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock or QWORD [rcx],0x989680                        }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock or QWORD [rcx],0x989680                        }
testcase	{ 0xf0, 0xf2, 0x48, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                   }, { lock xacquire or QWORD [rcx],0x989680                        }
testcase	{ 0xf0, 0xf3, 0x48, 0x81, 0x09, 0x80, 0x96, 0x98, 0x00                   }, { lock xrelease or QWORD [rcx],0x989680                        }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock sbb QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock sbb QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock sbb QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock sbb QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x48, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                   }, { lock xacquire sbb QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x48, 0x81, 0x19, 0x80, 0x96, 0x98, 0x00                   }, { lock xrelease sbb QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock sub QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock sub QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock sub QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock sub QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x48, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                   }, { lock xacquire sub QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x48, 0x81, 0x29, 0x80, 0x96, 0x98, 0x00                   }, { lock xrelease sub QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock xor QWORD [rcx],0x989680                       }
testcase	{ 0xf2, 0xf0, 0x48, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                   }, { xacquire lock xor QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock xor QWORD [rcx],0x989680                       }
testcase	{ 0xf3, 0xf0, 0x48, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                   }, { xrelease lock xor QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf2, 0x48, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                   }, { lock xacquire xor QWORD [rcx],0x989680                       }
testcase	{ 0xf0, 0xf3, 0x48, 0x81, 0x31, 0x80, 0x96, 0x98, 0x00                   }, { lock xrelease xor QWORD [rcx],0x989680                       }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x11, 0x64                                     }, { xacquire lock adc WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x11, 0x64                                     }, { xacquire lock adc WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x11, 0x64                                     }, { xrelease lock adc WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x11, 0x64                                     }, { xrelease lock adc WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x83, 0x11, 0x64                                     }, { lock xacquire adc WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x83, 0x11, 0x64                                     }, { lock xrelease adc WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x01, 0x64                                     }, { xacquire lock add WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x01, 0x64                                     }, { xacquire lock add WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x01, 0x64                                     }, { xrelease lock add WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x01, 0x64                                     }, { xrelease lock add WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x83, 0x01, 0x64                                     }, { lock xacquire add WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x83, 0x01, 0x64                                     }, { lock xrelease add WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x21, 0x64                                     }, { xacquire lock and WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x21, 0x64                                     }, { xacquire lock and WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x21, 0x64                                     }, { xrelease lock and WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x21, 0x64                                     }, { xrelease lock and WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x83, 0x21, 0x64                                     }, { lock xacquire and WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x83, 0x21, 0x64                                     }, { lock xrelease and WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xba, 0x39, 0x64                               }, { xacquire lock btc WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xba, 0x39, 0x64                               }, { xacquire lock btc WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xba, 0x39, 0x64                               }, { xrelease lock btc WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xba, 0x39, 0x64                               }, { xrelease lock btc WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x0f, 0xba, 0x39, 0x64                               }, { lock xacquire btc WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x0f, 0xba, 0x39, 0x64                               }, { lock xrelease btc WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xba, 0x31, 0x64                               }, { xacquire lock btr WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xba, 0x31, 0x64                               }, { xacquire lock btr WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xba, 0x31, 0x64                               }, { xrelease lock btr WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xba, 0x31, 0x64                               }, { xrelease lock btr WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x0f, 0xba, 0x31, 0x64                               }, { lock xacquire btr WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x0f, 0xba, 0x31, 0x64                               }, { lock xrelease btr WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xba, 0x29, 0x64                               }, { xacquire lock bts WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xba, 0x29, 0x64                               }, { xacquire lock bts WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xba, 0x29, 0x64                               }, { xrelease lock bts WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xba, 0x29, 0x64                               }, { xrelease lock bts WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x0f, 0xba, 0x29, 0x64                               }, { lock xacquire bts WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x0f, 0xba, 0x29, 0x64                               }, { lock xrelease bts WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xc7, 0x01, 0x64, 0x00                                     }, { xrelease mov WORD [rcx],0x64                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x09, 0x64                                     }, { xacquire lock or WORD [rcx],0x64                             }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x09, 0x64                                     }, { xacquire lock or WORD [rcx],0x64                             }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x09, 0x64                                     }, { xrelease lock or WORD [rcx],0x64                             }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x09, 0x64                                     }, { xrelease lock or WORD [rcx],0x64                             }
testcase	{ 0xf0, 0xf2, 0x66, 0x83, 0x09, 0x64                                     }, { lock xacquire or WORD [rcx],0x64                             }
testcase	{ 0xf0, 0xf3, 0x66, 0x83, 0x09, 0x64                                     }, { lock xrelease or WORD [rcx],0x64                             }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x19, 0x64                                     }, { xacquire lock sbb WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x19, 0x64                                     }, { xacquire lock sbb WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x19, 0x64                                     }, { xrelease lock sbb WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x19, 0x64                                     }, { xrelease lock sbb WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x83, 0x19, 0x64                                     }, { lock xacquire sbb WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x83, 0x19, 0x64                                     }, { lock xrelease sbb WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x29, 0x64                                     }, { xacquire lock sub WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x29, 0x64                                     }, { xacquire lock sub WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x29, 0x64                                     }, { xrelease lock sub WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x29, 0x64                                     }, { xrelease lock sub WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x83, 0x29, 0x64                                     }, { lock xacquire sub WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x83, 0x29, 0x64                                     }, { lock xrelease sub WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x31, 0x64                                     }, { xacquire lock xor WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x83, 0x31, 0x64                                     }, { xacquire lock xor WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x31, 0x64                                     }, { xrelease lock xor WORD [rcx],0x64                            }
testcase	{ 0x66, 0xf3, 0xf0, 0x83, 0x31, 0x64                                     }, { xrelease lock xor WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x66, 0x83, 0x31, 0x64                                     }, { lock xacquire xor WORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x66, 0x83, 0x31, 0x64                                     }, { lock xrelease xor WORD [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x83, 0x11, 0x64                                           }, { xacquire lock adc DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x11, 0x64                                           }, { xacquire lock adc DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x11, 0x64                                           }, { xrelease lock adc DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x11, 0x64                                           }, { xrelease lock adc DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x83, 0x11, 0x64                                           }, { lock xacquire adc DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x83, 0x11, 0x64                                           }, { lock xrelease adc DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x01, 0x64                                           }, { xacquire lock add DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x01, 0x64                                           }, { xacquire lock add DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x01, 0x64                                           }, { xrelease lock add DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x01, 0x64                                           }, { xrelease lock add DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x83, 0x01, 0x64                                           }, { lock xacquire add DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x83, 0x01, 0x64                                           }, { lock xrelease add DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x21, 0x64                                           }, { xacquire lock and DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x21, 0x64                                           }, { xacquire lock and DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x21, 0x64                                           }, { xrelease lock and DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x21, 0x64                                           }, { xrelease lock and DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x83, 0x21, 0x64                                           }, { lock xacquire and DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x83, 0x21, 0x64                                           }, { lock xrelease and DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x0f, 0xba, 0x39, 0x64                                     }, { xacquire lock btc DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x0f, 0xba, 0x39, 0x64                                     }, { xacquire lock btc DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x0f, 0xba, 0x39, 0x64                                     }, { xrelease lock btc DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x0f, 0xba, 0x39, 0x64                                     }, { xrelease lock btc DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x0f, 0xba, 0x39, 0x64                                     }, { lock xacquire btc DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x0f, 0xba, 0x39, 0x64                                     }, { lock xrelease btc DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x0f, 0xba, 0x31, 0x64                                     }, { xacquire lock btr DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x0f, 0xba, 0x31, 0x64                                     }, { xacquire lock btr DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x0f, 0xba, 0x31, 0x64                                     }, { xrelease lock btr DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x0f, 0xba, 0x31, 0x64                                     }, { xrelease lock btr DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x0f, 0xba, 0x31, 0x64                                     }, { lock xacquire btr DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x0f, 0xba, 0x31, 0x64                                     }, { lock xrelease btr DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x0f, 0xba, 0x29, 0x64                                     }, { xacquire lock bts DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x0f, 0xba, 0x29, 0x64                                     }, { xacquire lock bts DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x0f, 0xba, 0x29, 0x64                                     }, { xrelease lock bts DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x0f, 0xba, 0x29, 0x64                                     }, { xrelease lock bts DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x0f, 0xba, 0x29, 0x64                                     }, { lock xacquire bts DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x0f, 0xba, 0x29, 0x64                                     }, { lock xrelease bts DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xc7, 0x01, 0x64, 0x00, 0x00, 0x00                               }, { xrelease mov DWORD [rcx],0x64                                }
testcase	{ 0xf2, 0xf0, 0x83, 0x09, 0x64                                           }, { xacquire lock or DWORD [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x83, 0x09, 0x64                                           }, { xacquire lock or DWORD [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x83, 0x09, 0x64                                           }, { xrelease lock or DWORD [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x83, 0x09, 0x64                                           }, { xrelease lock or DWORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x83, 0x09, 0x64                                           }, { lock xacquire or DWORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x83, 0x09, 0x64                                           }, { lock xrelease or DWORD [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x83, 0x19, 0x64                                           }, { xacquire lock sbb DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x19, 0x64                                           }, { xacquire lock sbb DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x19, 0x64                                           }, { xrelease lock sbb DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x19, 0x64                                           }, { xrelease lock sbb DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x83, 0x19, 0x64                                           }, { lock xacquire sbb DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x83, 0x19, 0x64                                           }, { lock xrelease sbb DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x29, 0x64                                           }, { xacquire lock sub DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x29, 0x64                                           }, { xacquire lock sub DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x29, 0x64                                           }, { xrelease lock sub DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x29, 0x64                                           }, { xrelease lock sub DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x83, 0x29, 0x64                                           }, { lock xacquire sub DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x83, 0x29, 0x64                                           }, { lock xrelease sub DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x31, 0x64                                           }, { xacquire lock xor DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x83, 0x31, 0x64                                           }, { xacquire lock xor DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x31, 0x64                                           }, { xrelease lock xor DWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x83, 0x31, 0x64                                           }, { xrelease lock xor DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x83, 0x31, 0x64                                           }, { lock xacquire xor DWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x83, 0x31, 0x64                                           }, { lock xrelease xor DWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x11, 0x64                                     }, { xacquire lock adc QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x11, 0x64                                     }, { xacquire lock adc QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x11, 0x64                                     }, { xrelease lock adc QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x11, 0x64                                     }, { xrelease lock adc QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x83, 0x11, 0x64                                     }, { lock xacquire adc QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x83, 0x11, 0x64                                     }, { lock xrelease adc QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x01, 0x64                                     }, { xacquire lock add QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x01, 0x64                                     }, { xacquire lock add QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x01, 0x64                                     }, { xrelease lock add QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x01, 0x64                                     }, { xrelease lock add QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x83, 0x01, 0x64                                     }, { lock xacquire add QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x83, 0x01, 0x64                                     }, { lock xrelease add QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x21, 0x64                                     }, { xacquire lock and QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x21, 0x64                                     }, { xacquire lock and QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x21, 0x64                                     }, { xrelease lock and QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x21, 0x64                                     }, { xrelease lock and QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x83, 0x21, 0x64                                     }, { lock xacquire and QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x83, 0x21, 0x64                                     }, { lock xrelease and QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xba, 0x39, 0x64                               }, { xacquire lock btc QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xba, 0x39, 0x64                               }, { xacquire lock btc QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xba, 0x39, 0x64                               }, { xrelease lock btc QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xba, 0x39, 0x64                               }, { xrelease lock btc QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x0f, 0xba, 0x39, 0x64                               }, { lock xacquire btc QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x0f, 0xba, 0x39, 0x64                               }, { lock xrelease btc QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xba, 0x31, 0x64                               }, { xacquire lock btr QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xba, 0x31, 0x64                               }, { xacquire lock btr QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xba, 0x31, 0x64                               }, { xrelease lock btr QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xba, 0x31, 0x64                               }, { xrelease lock btr QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x0f, 0xba, 0x31, 0x64                               }, { lock xacquire btr QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x0f, 0xba, 0x31, 0x64                               }, { lock xrelease btr QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xba, 0x29, 0x64                               }, { xacquire lock bts QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xba, 0x29, 0x64                               }, { xacquire lock bts QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xba, 0x29, 0x64                               }, { xrelease lock bts QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xba, 0x29, 0x64                               }, { xrelease lock bts QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x0f, 0xba, 0x29, 0x64                               }, { lock xacquire bts QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x0f, 0xba, 0x29, 0x64                               }, { lock xrelease bts QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0x48, 0xc7, 0x01, 0x64, 0x00, 0x00, 0x00                         }, { xrelease mov QWORD [rcx],0x64                                }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x09, 0x64                                     }, { xacquire lock or QWORD [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x09, 0x64                                     }, { xacquire lock or QWORD [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x09, 0x64                                     }, { xrelease lock or QWORD [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x09, 0x64                                     }, { xrelease lock or QWORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x83, 0x09, 0x64                                     }, { lock xacquire or QWORD [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x83, 0x09, 0x64                                     }, { lock xrelease or QWORD [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x19, 0x64                                     }, { xacquire lock sbb QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x19, 0x64                                     }, { xacquire lock sbb QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x19, 0x64                                     }, { xrelease lock sbb QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x19, 0x64                                     }, { xrelease lock sbb QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x83, 0x19, 0x64                                     }, { lock xacquire sbb QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x83, 0x19, 0x64                                     }, { lock xrelease sbb QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x29, 0x64                                     }, { xacquire lock sub QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x29, 0x64                                     }, { xacquire lock sub QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x29, 0x64                                     }, { xrelease lock sub QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x29, 0x64                                     }, { xrelease lock sub QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x83, 0x29, 0x64                                     }, { lock xacquire sub QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x83, 0x29, 0x64                                     }, { lock xrelease sub QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x31, 0x64                                     }, { xacquire lock xor QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x83, 0x31, 0x64                                     }, { xacquire lock xor QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x31, 0x64                                     }, { xrelease lock xor QWORD [rcx],0x64                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x83, 0x31, 0x64                                     }, { xrelease lock xor QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x83, 0x31, 0x64                                     }, { lock xacquire xor QWORD [rcx],0x64                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x83, 0x31, 0x64                                     }, { lock xrelease xor QWORD [rcx],0x64                           }
testcase	{ 0xf2, 0xf0, 0x80, 0x11, 0x64                                           }, { xacquire lock adc BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x11, 0x64                                           }, { xacquire lock adc BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x11, 0x64                                           }, { xrelease lock adc BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x11, 0x64                                           }, { xrelease lock adc BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x11, 0x64                                           }, { lock xacquire adc BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x11, 0x64                                           }, { lock xrelease adc BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x01, 0x64                                           }, { xacquire lock add BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x01, 0x64                                           }, { xacquire lock add BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x01, 0x64                                           }, { xrelease lock add BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x01, 0x64                                           }, { xrelease lock add BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x01, 0x64                                           }, { lock xacquire add BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x01, 0x64                                           }, { lock xrelease add BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x21, 0x64                                           }, { xacquire lock and BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x21, 0x64                                           }, { xacquire lock and BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x21, 0x64                                           }, { xrelease lock and BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x21, 0x64                                           }, { xrelease lock and BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x21, 0x64                                           }, { lock xacquire and BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x21, 0x64                                           }, { lock xrelease and BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xc6, 0x01, 0x64                                                 }, { xrelease mov BYTE [rcx],0x64                                 }
testcase	{ 0xf2, 0xf0, 0x80, 0x09, 0x64                                           }, { xacquire lock or BYTE [rcx],0x64                             }
testcase	{ 0xf2, 0xf0, 0x80, 0x09, 0x64                                           }, { xacquire lock or BYTE [rcx],0x64                             }
testcase	{ 0xf3, 0xf0, 0x80, 0x09, 0x64                                           }, { xrelease lock or BYTE [rcx],0x64                             }
testcase	{ 0xf3, 0xf0, 0x80, 0x09, 0x64                                           }, { xrelease lock or BYTE [rcx],0x64                             }
testcase	{ 0xf0, 0xf2, 0x80, 0x09, 0x64                                           }, { lock xacquire or BYTE [rcx],0x64                             }
testcase	{ 0xf0, 0xf3, 0x80, 0x09, 0x64                                           }, { lock xrelease or BYTE [rcx],0x64                             }
testcase	{ 0xf2, 0xf0, 0x80, 0x19, 0x64                                           }, { xacquire lock sbb BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x19, 0x64                                           }, { xacquire lock sbb BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x19, 0x64                                           }, { xrelease lock sbb BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x19, 0x64                                           }, { xrelease lock sbb BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x19, 0x64                                           }, { lock xacquire sbb BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x19, 0x64                                           }, { lock xrelease sbb BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x29, 0x64                                           }, { xacquire lock sub BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x29, 0x64                                           }, { xacquire lock sub BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x29, 0x64                                           }, { xrelease lock sub BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x29, 0x64                                           }, { xrelease lock sub BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x29, 0x64                                           }, { lock xacquire sub BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x29, 0x64                                           }, { lock xrelease sub BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x31, 0x64                                           }, { xacquire lock xor BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x80, 0x31, 0x64                                           }, { xacquire lock xor BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x31, 0x64                                           }, { xrelease lock xor BYTE [rcx],0x64                            }
testcase	{ 0xf3, 0xf0, 0x80, 0x31, 0x64                                           }, { xrelease lock xor BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf2, 0x80, 0x31, 0x64                                           }, { lock xacquire xor BYTE [rcx],0x64                            }
testcase	{ 0xf0, 0xf3, 0x80, 0x31, 0x64                                           }, { lock xrelease xor BYTE [rcx],0x64                            }
testcase	{ 0xf2, 0xf0, 0x10, 0x01                                                 }, { xacquire lock adc BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x10, 0x01                                                 }, { xacquire lock adc BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x10, 0x01                                                 }, { xrelease lock adc BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x10, 0x01                                                 }, { xrelease lock adc BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf2, 0x10, 0x01                                                 }, { lock xacquire adc BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf3, 0x10, 0x01                                                 }, { lock xrelease adc BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x00, 0x01                                                 }, { xacquire lock add BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x00, 0x01                                                 }, { xacquire lock add BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x00, 0x01                                                 }, { xrelease lock add BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x00, 0x01                                                 }, { xrelease lock add BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf2, 0x00, 0x01                                                 }, { lock xacquire add BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf3, 0x00, 0x01                                                 }, { lock xrelease add BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x20, 0x01                                                 }, { xacquire lock and BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x20, 0x01                                                 }, { xacquire lock and BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x20, 0x01                                                 }, { xrelease lock and BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x20, 0x01                                                 }, { xrelease lock and BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf2, 0x20, 0x01                                                 }, { lock xacquire and BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf3, 0x20, 0x01                                                 }, { lock xrelease and BYTE [rcx],al                              }
testcase	{ 0xf3, 0x88, 0x01                                                       }, { xrelease mov BYTE [rcx],al                                   }
testcase	{ 0xf2, 0xf0, 0x08, 0x01                                                 }, { xacquire lock or BYTE [rcx],al                               }
testcase	{ 0xf2, 0xf0, 0x08, 0x01                                                 }, { xacquire lock or BYTE [rcx],al                               }
testcase	{ 0xf3, 0xf0, 0x08, 0x01                                                 }, { xrelease lock or BYTE [rcx],al                               }
testcase	{ 0xf3, 0xf0, 0x08, 0x01                                                 }, { xrelease lock or BYTE [rcx],al                               }
testcase	{ 0xf0, 0xf2, 0x08, 0x01                                                 }, { lock xacquire or BYTE [rcx],al                               }
testcase	{ 0xf0, 0xf3, 0x08, 0x01                                                 }, { lock xrelease or BYTE [rcx],al                               }
testcase	{ 0xf2, 0xf0, 0x18, 0x01                                                 }, { xacquire lock sbb BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x18, 0x01                                                 }, { xacquire lock sbb BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x18, 0x01                                                 }, { xrelease lock sbb BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x18, 0x01                                                 }, { xrelease lock sbb BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf2, 0x18, 0x01                                                 }, { lock xacquire sbb BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf3, 0x18, 0x01                                                 }, { lock xrelease sbb BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x28, 0x01                                                 }, { xacquire lock sub BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x28, 0x01                                                 }, { xacquire lock sub BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x28, 0x01                                                 }, { xrelease lock sub BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x28, 0x01                                                 }, { xrelease lock sub BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf2, 0x28, 0x01                                                 }, { lock xacquire sub BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf3, 0x28, 0x01                                                 }, { lock xrelease sub BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x86, 0x01                                                 }, { xacquire lock xchg BYTE [rcx],al                             }
testcase	{ 0xf2, 0xf0, 0x86, 0x01                                                 }, { xacquire lock xchg BYTE [rcx],al                             }
testcase	{ 0xf2, 0x86, 0x01                                                       }, { xacquire xchg BYTE [rcx],al                                  }
testcase	{ 0xf3, 0xf0, 0x86, 0x01                                                 }, { xrelease lock xchg BYTE [rcx],al                             }
testcase	{ 0xf3, 0xf0, 0x86, 0x01                                                 }, { xrelease lock xchg BYTE [rcx],al                             }
testcase	{ 0xf3, 0x86, 0x01                                                       }, { xrelease xchg BYTE [rcx],al                                  }
testcase	{ 0xf0, 0xf2, 0x86, 0x01                                                 }, { lock xacquire xchg BYTE [rcx],al                             }
testcase	{ 0xf0, 0xf3, 0x86, 0x01                                                 }, { lock xrelease xchg BYTE [rcx],al                             }
testcase	{ 0xf2, 0xf0, 0x30, 0x01                                                 }, { xacquire lock xor BYTE [rcx],al                              }
testcase	{ 0xf2, 0xf0, 0x30, 0x01                                                 }, { xacquire lock xor BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x30, 0x01                                                 }, { xrelease lock xor BYTE [rcx],al                              }
testcase	{ 0xf3, 0xf0, 0x30, 0x01                                                 }, { xrelease lock xor BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf2, 0x30, 0x01                                                 }, { lock xacquire xor BYTE [rcx],al                              }
testcase	{ 0xf0, 0xf3, 0x30, 0x01                                                 }, { lock xrelease xor BYTE [rcx],al                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x11, 0x01                                           }, { xacquire lock adc WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x11, 0x01                                           }, { xacquire lock adc WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x11, 0x01                                           }, { xrelease lock adc WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x11, 0x01                                           }, { xrelease lock adc WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x11, 0x01                                           }, { lock xacquire adc WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x11, 0x01                                           }, { lock xrelease adc WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x01, 0x01                                           }, { xacquire lock add WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x01, 0x01                                           }, { xacquire lock add WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x01, 0x01                                           }, { xrelease lock add WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x01, 0x01                                           }, { xrelease lock add WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x01, 0x01                                           }, { lock xacquire add WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x01, 0x01                                           }, { lock xrelease add WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x21, 0x01                                           }, { xacquire lock and WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x21, 0x01                                           }, { xacquire lock and WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x21, 0x01                                           }, { xrelease lock and WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x21, 0x01                                           }, { xrelease lock and WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x21, 0x01                                           }, { lock xacquire and WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x21, 0x01                                           }, { lock xrelease and WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0x89, 0x01                                                 }, { xrelease mov WORD [rcx],ax                                   }
testcase	{ 0x66, 0xf2, 0xf0, 0x09, 0x01                                           }, { xacquire lock or WORD [rcx],ax                               }
testcase	{ 0x66, 0xf2, 0xf0, 0x09, 0x01                                           }, { xacquire lock or WORD [rcx],ax                               }
testcase	{ 0x66, 0xf3, 0xf0, 0x09, 0x01                                           }, { xrelease lock or WORD [rcx],ax                               }
testcase	{ 0x66, 0xf3, 0xf0, 0x09, 0x01                                           }, { xrelease lock or WORD [rcx],ax                               }
testcase	{ 0xf0, 0xf2, 0x66, 0x09, 0x01                                           }, { lock xacquire or WORD [rcx],ax                               }
testcase	{ 0xf0, 0xf3, 0x66, 0x09, 0x01                                           }, { lock xrelease or WORD [rcx],ax                               }
testcase	{ 0x66, 0xf2, 0xf0, 0x19, 0x01                                           }, { xacquire lock sbb WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x19, 0x01                                           }, { xacquire lock sbb WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x19, 0x01                                           }, { xrelease lock sbb WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x19, 0x01                                           }, { xrelease lock sbb WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x19, 0x01                                           }, { lock xacquire sbb WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x19, 0x01                                           }, { lock xrelease sbb WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x29, 0x01                                           }, { xacquire lock sub WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x29, 0x01                                           }, { xacquire lock sub WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x29, 0x01                                           }, { xrelease lock sub WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x29, 0x01                                           }, { xrelease lock sub WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x29, 0x01                                           }, { lock xacquire sub WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x29, 0x01                                           }, { lock xrelease sub WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x87, 0x01                                           }, { xacquire lock xchg WORD [rcx],ax                             }
testcase	{ 0x66, 0xf2, 0xf0, 0x87, 0x01                                           }, { xacquire lock xchg WORD [rcx],ax                             }
testcase	{ 0x66, 0xf2, 0x87, 0x01                                                 }, { xacquire xchg WORD [rcx],ax                                  }
testcase	{ 0x66, 0xf3, 0xf0, 0x87, 0x01                                           }, { xrelease lock xchg WORD [rcx],ax                             }
testcase	{ 0x66, 0xf3, 0xf0, 0x87, 0x01                                           }, { xrelease lock xchg WORD [rcx],ax                             }
testcase	{ 0x66, 0xf3, 0x87, 0x01                                                 }, { xrelease xchg WORD [rcx],ax                                  }
testcase	{ 0xf0, 0xf2, 0x66, 0x87, 0x01                                           }, { lock xacquire xchg WORD [rcx],ax                             }
testcase	{ 0xf0, 0xf3, 0x66, 0x87, 0x01                                           }, { lock xrelease xchg WORD [rcx],ax                             }
testcase	{ 0x66, 0xf2, 0xf0, 0x31, 0x01                                           }, { xacquire lock xor WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x31, 0x01                                           }, { xacquire lock xor WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x31, 0x01                                           }, { xrelease lock xor WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x31, 0x01                                           }, { xrelease lock xor WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x31, 0x01                                           }, { lock xacquire xor WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x31, 0x01                                           }, { lock xrelease xor WORD [rcx],ax                              }
testcase	{ 0xf2, 0xf0, 0x11, 0x01                                                 }, { xacquire lock adc DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x11, 0x01                                                 }, { xacquire lock adc DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x11, 0x01                                                 }, { xrelease lock adc DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x11, 0x01                                                 }, { xrelease lock adc DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x11, 0x01                                                 }, { lock xacquire adc DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x11, 0x01                                                 }, { lock xrelease adc DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x01, 0x01                                                 }, { xacquire lock add DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x01, 0x01                                                 }, { xacquire lock add DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x01, 0x01                                                 }, { xrelease lock add DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x01, 0x01                                                 }, { xrelease lock add DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x01, 0x01                                                 }, { lock xacquire add DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x01, 0x01                                                 }, { lock xrelease add DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x21, 0x01                                                 }, { xacquire lock and DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x21, 0x01                                                 }, { xacquire lock and DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x21, 0x01                                                 }, { xrelease lock and DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x21, 0x01                                                 }, { xrelease lock and DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x21, 0x01                                                 }, { lock xacquire and DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x21, 0x01                                                 }, { lock xrelease and DWORD [rcx],eax                            }
testcase	{ 0xf3, 0x89, 0x01                                                       }, { xrelease mov DWORD [rcx],eax                                 }
testcase	{ 0xf2, 0xf0, 0x09, 0x01                                                 }, { xacquire lock or DWORD [rcx],eax                             }
testcase	{ 0xf2, 0xf0, 0x09, 0x01                                                 }, { xacquire lock or DWORD [rcx],eax                             }
testcase	{ 0xf3, 0xf0, 0x09, 0x01                                                 }, { xrelease lock or DWORD [rcx],eax                             }
testcase	{ 0xf3, 0xf0, 0x09, 0x01                                                 }, { xrelease lock or DWORD [rcx],eax                             }
testcase	{ 0xf0, 0xf2, 0x09, 0x01                                                 }, { lock xacquire or DWORD [rcx],eax                             }
testcase	{ 0xf0, 0xf3, 0x09, 0x01                                                 }, { lock xrelease or DWORD [rcx],eax                             }
testcase	{ 0xf2, 0xf0, 0x19, 0x01                                                 }, { xacquire lock sbb DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x19, 0x01                                                 }, { xacquire lock sbb DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x19, 0x01                                                 }, { xrelease lock sbb DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x19, 0x01                                                 }, { xrelease lock sbb DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x19, 0x01                                                 }, { lock xacquire sbb DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x19, 0x01                                                 }, { lock xrelease sbb DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x29, 0x01                                                 }, { xacquire lock sub DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x29, 0x01                                                 }, { xacquire lock sub DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x29, 0x01                                                 }, { xrelease lock sub DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x29, 0x01                                                 }, { xrelease lock sub DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x29, 0x01                                                 }, { lock xacquire sub DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x29, 0x01                                                 }, { lock xrelease sub DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x87, 0x01                                                 }, { xacquire lock xchg DWORD [rcx],eax                           }
testcase	{ 0xf2, 0xf0, 0x87, 0x01                                                 }, { xacquire lock xchg DWORD [rcx],eax                           }
testcase	{ 0xf2, 0x87, 0x01                                                       }, { xacquire xchg DWORD [rcx],eax                                }
testcase	{ 0xf3, 0xf0, 0x87, 0x01                                                 }, { xrelease lock xchg DWORD [rcx],eax                           }
testcase	{ 0xf3, 0xf0, 0x87, 0x01                                                 }, { xrelease lock xchg DWORD [rcx],eax                           }
testcase	{ 0xf3, 0x87, 0x01                                                       }, { xrelease xchg DWORD [rcx],eax                                }
testcase	{ 0xf0, 0xf2, 0x87, 0x01                                                 }, { lock xacquire xchg DWORD [rcx],eax                           }
testcase	{ 0xf0, 0xf3, 0x87, 0x01                                                 }, { lock xrelease xchg DWORD [rcx],eax                           }
testcase	{ 0xf2, 0xf0, 0x31, 0x01                                                 }, { xacquire lock xor DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x31, 0x01                                                 }, { xacquire lock xor DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x31, 0x01                                                 }, { xrelease lock xor DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x31, 0x01                                                 }, { xrelease lock xor DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x31, 0x01                                                 }, { lock xacquire xor DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x31, 0x01                                                 }, { lock xrelease xor DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x11, 0x01                                           }, { xacquire lock adc QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x11, 0x01                                           }, { xacquire lock adc QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x11, 0x01                                           }, { xrelease lock adc QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x11, 0x01                                           }, { xrelease lock adc QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x11, 0x01                                           }, { lock xacquire adc QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x11, 0x01                                           }, { lock xrelease adc QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x01, 0x01                                           }, { xacquire lock add QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x01, 0x01                                           }, { xacquire lock add QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x01, 0x01                                           }, { xrelease lock add QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x01, 0x01                                           }, { xrelease lock add QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x01, 0x01                                           }, { lock xacquire add QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x01, 0x01                                           }, { lock xrelease add QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x21, 0x01                                           }, { xacquire lock and QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x21, 0x01                                           }, { xacquire lock and QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x21, 0x01                                           }, { xrelease lock and QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x21, 0x01                                           }, { xrelease lock and QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x21, 0x01                                           }, { lock xacquire and QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x21, 0x01                                           }, { lock xrelease and QWORD [rcx],rax                            }
testcase	{ 0xf3, 0x48, 0x89, 0x01                                                 }, { xrelease mov QWORD [rcx],rax                                 }
testcase	{ 0xf2, 0xf0, 0x48, 0x09, 0x01                                           }, { xacquire lock or QWORD [rcx],rax                             }
testcase	{ 0xf2, 0xf0, 0x48, 0x09, 0x01                                           }, { xacquire lock or QWORD [rcx],rax                             }
testcase	{ 0xf3, 0xf0, 0x48, 0x09, 0x01                                           }, { xrelease lock or QWORD [rcx],rax                             }
testcase	{ 0xf3, 0xf0, 0x48, 0x09, 0x01                                           }, { xrelease lock or QWORD [rcx],rax                             }
testcase	{ 0xf0, 0xf2, 0x48, 0x09, 0x01                                           }, { lock xacquire or QWORD [rcx],rax                             }
testcase	{ 0xf0, 0xf3, 0x48, 0x09, 0x01                                           }, { lock xrelease or QWORD [rcx],rax                             }
testcase	{ 0xf2, 0xf0, 0x48, 0x19, 0x01                                           }, { xacquire lock sbb QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x19, 0x01                                           }, { xacquire lock sbb QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x19, 0x01                                           }, { xrelease lock sbb QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x19, 0x01                                           }, { xrelease lock sbb QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x19, 0x01                                           }, { lock xacquire sbb QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x19, 0x01                                           }, { lock xrelease sbb QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x29, 0x01                                           }, { xacquire lock sub QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x29, 0x01                                           }, { xacquire lock sub QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x29, 0x01                                           }, { xrelease lock sub QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x29, 0x01                                           }, { xrelease lock sub QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x29, 0x01                                           }, { lock xacquire sub QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x29, 0x01                                           }, { lock xrelease sub QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x87, 0x01                                           }, { xacquire lock xchg QWORD [rcx],rax                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x87, 0x01                                           }, { xacquire lock xchg QWORD [rcx],rax                           }
testcase	{ 0xf2, 0x48, 0x87, 0x01                                                 }, { xacquire xchg QWORD [rcx],rax                                }
testcase	{ 0xf3, 0xf0, 0x48, 0x87, 0x01                                           }, { xrelease lock xchg QWORD [rcx],rax                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x87, 0x01                                           }, { xrelease lock xchg QWORD [rcx],rax                           }
testcase	{ 0xf3, 0x48, 0x87, 0x01                                                 }, { xrelease xchg QWORD [rcx],rax                                }
testcase	{ 0xf0, 0xf2, 0x48, 0x87, 0x01                                           }, { lock xacquire xchg QWORD [rcx],rax                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x87, 0x01                                           }, { lock xrelease xchg QWORD [rcx],rax                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x31, 0x01                                           }, { xacquire lock xor QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x31, 0x01                                           }, { xacquire lock xor QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x31, 0x01                                           }, { xrelease lock xor QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x31, 0x01                                           }, { xrelease lock xor QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x31, 0x01                                           }, { lock xacquire xor QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x31, 0x01                                           }, { lock xrelease xor QWORD [rcx],rax                            }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xbb, 0x01                                     }, { xacquire lock btc WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xbb, 0x01                                     }, { xacquire lock btc WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xbb, 0x01                                     }, { xrelease lock btc WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xbb, 0x01                                     }, { xrelease lock btc WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x0f, 0xbb, 0x01                                     }, { lock xacquire btc WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x0f, 0xbb, 0x01                                     }, { lock xrelease btc WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xb3, 0x01                                     }, { xacquire lock btr WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xb3, 0x01                                     }, { xacquire lock btr WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xb3, 0x01                                     }, { xrelease lock btr WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xb3, 0x01                                     }, { xrelease lock btr WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x0f, 0xb3, 0x01                                     }, { lock xacquire btr WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x0f, 0xb3, 0x01                                     }, { lock xrelease btr WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xab, 0x01                                     }, { xacquire lock bts WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xab, 0x01                                     }, { xacquire lock bts WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xab, 0x01                                     }, { xrelease lock bts WORD [rcx],ax                              }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xab, 0x01                                     }, { xrelease lock bts WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf2, 0x66, 0x0f, 0xab, 0x01                                     }, { lock xacquire bts WORD [rcx],ax                              }
testcase	{ 0xf0, 0xf3, 0x66, 0x0f, 0xab, 0x01                                     }, { lock xrelease bts WORD [rcx],ax                              }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xb1, 0x01                                     }, { xacquire lock cmpxchg WORD [rcx],ax                          }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xb1, 0x01                                     }, { xacquire lock cmpxchg WORD [rcx],ax                          }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xb1, 0x01                                     }, { xrelease lock cmpxchg WORD [rcx],ax                          }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xb1, 0x01                                     }, { xrelease lock cmpxchg WORD [rcx],ax                          }
testcase	{ 0xf0, 0xf2, 0x66, 0x0f, 0xb1, 0x01                                     }, { lock xacquire cmpxchg WORD [rcx],ax                          }
testcase	{ 0xf0, 0xf3, 0x66, 0x0f, 0xb1, 0x01                                     }, { lock xrelease cmpxchg WORD [rcx],ax                          }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xc1, 0x01                                     }, { xacquire lock xadd WORD [rcx],ax                             }
testcase	{ 0x66, 0xf2, 0xf0, 0x0f, 0xc1, 0x01                                     }, { xacquire lock xadd WORD [rcx],ax                             }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xc1, 0x01                                     }, { xrelease lock xadd WORD [rcx],ax                             }
testcase	{ 0x66, 0xf3, 0xf0, 0x0f, 0xc1, 0x01                                     }, { xrelease lock xadd WORD [rcx],ax                             }
testcase	{ 0xf0, 0xf2, 0x66, 0x0f, 0xc1, 0x01                                     }, { lock xacquire xadd WORD [rcx],ax                             }
testcase	{ 0xf0, 0xf3, 0x66, 0x0f, 0xc1, 0x01                                     }, { lock xrelease xadd WORD [rcx],ax                             }
testcase	{ 0xf2, 0xf0, 0x0f, 0xbb, 0x01                                           }, { xacquire lock btc DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x0f, 0xbb, 0x01                                           }, { xacquire lock btc DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x0f, 0xbb, 0x01                                           }, { xrelease lock btc DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x0f, 0xbb, 0x01                                           }, { xrelease lock btc DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x0f, 0xbb, 0x01                                           }, { lock xacquire btc DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x0f, 0xbb, 0x01                                           }, { lock xrelease btc DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x0f, 0xb3, 0x01                                           }, { xacquire lock btr DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x0f, 0xb3, 0x01                                           }, { xacquire lock btr DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x0f, 0xb3, 0x01                                           }, { xrelease lock btr DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x0f, 0xb3, 0x01                                           }, { xrelease lock btr DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x0f, 0xb3, 0x01                                           }, { lock xacquire btr DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x0f, 0xb3, 0x01                                           }, { lock xrelease btr DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x0f, 0xab, 0x01                                           }, { xacquire lock bts DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x0f, 0xab, 0x01                                           }, { xacquire lock bts DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x0f, 0xab, 0x01                                           }, { xrelease lock bts DWORD [rcx],eax                            }
testcase	{ 0xf3, 0xf0, 0x0f, 0xab, 0x01                                           }, { xrelease lock bts DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf2, 0x0f, 0xab, 0x01                                           }, { lock xacquire bts DWORD [rcx],eax                            }
testcase	{ 0xf0, 0xf3, 0x0f, 0xab, 0x01                                           }, { lock xrelease bts DWORD [rcx],eax                            }
testcase	{ 0xf2, 0xf0, 0x0f, 0xb1, 0x01                                           }, { xacquire lock cmpxchg DWORD [rcx],eax                        }
testcase	{ 0xf2, 0xf0, 0x0f, 0xb1, 0x01                                           }, { xacquire lock cmpxchg DWORD [rcx],eax                        }
testcase	{ 0xf3, 0xf0, 0x0f, 0xb1, 0x01                                           }, { xrelease lock cmpxchg DWORD [rcx],eax                        }
testcase	{ 0xf3, 0xf0, 0x0f, 0xb1, 0x01                                           }, { xrelease lock cmpxchg DWORD [rcx],eax                        }
testcase	{ 0xf0, 0xf2, 0x0f, 0xb1, 0x01                                           }, { lock xacquire cmpxchg DWORD [rcx],eax                        }
testcase	{ 0xf0, 0xf3, 0x0f, 0xb1, 0x01                                           }, { lock xrelease cmpxchg DWORD [rcx],eax                        }
testcase	{ 0xf2, 0xf0, 0x0f, 0xc1, 0x01                                           }, { xacquire lock xadd DWORD [rcx],eax                           }
testcase	{ 0xf2, 0xf0, 0x0f, 0xc1, 0x01                                           }, { xacquire lock xadd DWORD [rcx],eax                           }
testcase	{ 0xf3, 0xf0, 0x0f, 0xc1, 0x01                                           }, { xrelease lock xadd DWORD [rcx],eax                           }
testcase	{ 0xf3, 0xf0, 0x0f, 0xc1, 0x01                                           }, { xrelease lock xadd DWORD [rcx],eax                           }
testcase	{ 0xf0, 0xf2, 0x0f, 0xc1, 0x01                                           }, { lock xacquire xadd DWORD [rcx],eax                           }
testcase	{ 0xf0, 0xf3, 0x0f, 0xc1, 0x01                                           }, { lock xrelease xadd DWORD [rcx],eax                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xbb, 0x01                                     }, { xacquire lock btc QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xbb, 0x01                                     }, { xacquire lock btc QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xbb, 0x01                                     }, { xrelease lock btc QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xbb, 0x01                                     }, { xrelease lock btc QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x0f, 0xbb, 0x01                                     }, { lock xacquire btc QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x0f, 0xbb, 0x01                                     }, { lock xrelease btc QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xb3, 0x01                                     }, { xacquire lock btr QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xb3, 0x01                                     }, { xacquire lock btr QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xb3, 0x01                                     }, { xrelease lock btr QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xb3, 0x01                                     }, { xrelease lock btr QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x0f, 0xb3, 0x01                                     }, { lock xacquire btr QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x0f, 0xb3, 0x01                                     }, { lock xrelease btr QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xab, 0x01                                     }, { xacquire lock bts QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xab, 0x01                                     }, { xacquire lock bts QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xab, 0x01                                     }, { xrelease lock bts QWORD [rcx],rax                            }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xab, 0x01                                     }, { xrelease lock bts QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf2, 0x48, 0x0f, 0xab, 0x01                                     }, { lock xacquire bts QWORD [rcx],rax                            }
testcase	{ 0xf0, 0xf3, 0x48, 0x0f, 0xab, 0x01                                     }, { lock xrelease bts QWORD [rcx],rax                            }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xb1, 0x01                                     }, { xacquire lock cmpxchg QWORD [rcx],rax                        }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xb1, 0x01                                     }, { xacquire lock cmpxchg QWORD [rcx],rax                        }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xb1, 0x01                                     }, { xrelease lock cmpxchg QWORD [rcx],rax                        }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xb1, 0x01                                     }, { xrelease lock cmpxchg QWORD [rcx],rax                        }
testcase	{ 0xf0, 0xf2, 0x48, 0x0f, 0xb1, 0x01                                     }, { lock xacquire cmpxchg QWORD [rcx],rax                        }
testcase	{ 0xf0, 0xf3, 0x48, 0x0f, 0xb1, 0x01                                     }, { lock xrelease cmpxchg QWORD [rcx],rax                        }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xc1, 0x01                                     }, { xacquire lock xadd QWORD [rcx],rax                           }
testcase	{ 0xf2, 0xf0, 0x48, 0x0f, 0xc1, 0x01                                     }, { xacquire lock xadd QWORD [rcx],rax                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xc1, 0x01                                     }, { xrelease lock xadd QWORD [rcx],rax                           }
testcase	{ 0xf3, 0xf0, 0x48, 0x0f, 0xc1, 0x01                                     }, { xrelease lock xadd QWORD [rcx],rax                           }
testcase	{ 0xf0, 0xf2, 0x48, 0x0f, 0xc1, 0x01                                     }, { lock xacquire xadd QWORD [rcx],rax                           }
testcase	{ 0xf0, 0xf3, 0x48, 0x0f, 0xc1, 0x01                                     }, { lock xrelease xadd QWORD [rcx],rax                           }
testcase	{ 0xf2, 0xf0, 0xfe, 0x09                                                 }, { xacquire lock dec BYTE [rcx]                                 }
testcase	{ 0xf2, 0xf0, 0xfe, 0x09                                                 }, { xacquire lock dec BYTE [rcx]                                 }
testcase	{ 0xf3, 0xf0, 0xfe, 0x09                                                 }, { xrelease lock dec BYTE [rcx]                                 }
testcase	{ 0xf3, 0xf0, 0xfe, 0x09                                                 }, { xrelease lock dec BYTE [rcx]                                 }
testcase	{ 0xf0, 0xf2, 0xfe, 0x09                                                 }, { lock xacquire dec BYTE [rcx]                                 }
testcase	{ 0xf0, 0xf3, 0xfe, 0x09                                                 }, { lock xrelease dec BYTE [rcx]                                 }
testcase	{ 0xf2, 0xf0, 0xfe, 0x01                                                 }, { xacquire lock inc BYTE [rcx]                                 }
testcase	{ 0xf2, 0xf0, 0xfe, 0x01                                                 }, { xacquire lock inc BYTE [rcx]                                 }
testcase	{ 0xf3, 0xf0, 0xfe, 0x01                                                 }, { xrelease lock inc BYTE [rcx]                                 }
testcase	{ 0xf3, 0xf0, 0xfe, 0x01                                                 }, { xrelease lock inc BYTE [rcx]                                 }
testcase	{ 0xf0, 0xf2, 0xfe, 0x01                                                 }, { lock xacquire inc BYTE [rcx]                                 }
testcase	{ 0xf0, 0xf3, 0xfe, 0x01                                                 }, { lock xrelease inc BYTE [rcx]                                 }
testcase	{ 0xf2, 0xf0, 0xf6, 0x19                                                 }, { xacquire lock neg BYTE [rcx]                                 }
testcase	{ 0xf2, 0xf0, 0xf6, 0x19                                                 }, { xacquire lock neg BYTE [rcx]                                 }
testcase	{ 0xf3, 0xf0, 0xf6, 0x19                                                 }, { xrelease lock neg BYTE [rcx]                                 }
testcase	{ 0xf3, 0xf0, 0xf6, 0x19                                                 }, { xrelease lock neg BYTE [rcx]                                 }
testcase	{ 0xf0, 0xf2, 0xf6, 0x19                                                 }, { lock xacquire neg BYTE [rcx]                                 }
testcase	{ 0xf0, 0xf3, 0xf6, 0x19                                                 }, { lock xrelease neg BYTE [rcx]                                 }
testcase	{ 0xf2, 0xf0, 0xf6, 0x11                                                 }, { xacquire lock not BYTE [rcx]                                 }
testcase	{ 0xf2, 0xf0, 0xf6, 0x11                                                 }, { xacquire lock not BYTE [rcx]                                 }
testcase	{ 0xf3, 0xf0, 0xf6, 0x11                                                 }, { xrelease lock not BYTE [rcx]                                 }
testcase	{ 0xf3, 0xf0, 0xf6, 0x11                                                 }, { xrelease lock not BYTE [rcx]                                 }
testcase	{ 0xf0, 0xf2, 0xf6, 0x11                                                 }, { lock xacquire not BYTE [rcx]                                 }
testcase	{ 0xf0, 0xf3, 0xf6, 0x11                                                 }, { lock xrelease not BYTE [rcx]                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0xff, 0x09                                           }, { xacquire lock dec WORD [rcx]                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0xff, 0x09                                           }, { xacquire lock dec WORD [rcx]                                 }
testcase	{ 0x66, 0xf3, 0xf0, 0xff, 0x09                                           }, { xrelease lock dec WORD [rcx]                                 }
testcase	{ 0x66, 0xf3, 0xf0, 0xff, 0x09                                           }, { xrelease lock dec WORD [rcx]                                 }
testcase	{ 0xf0, 0xf2, 0x66, 0xff, 0x09                                           }, { lock xacquire dec WORD [rcx]                                 }
testcase	{ 0xf0, 0xf3, 0x66, 0xff, 0x09                                           }, { lock xrelease dec WORD [rcx]                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0xff, 0x01                                           }, { xacquire lock inc WORD [rcx]                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0xff, 0x01                                           }, { xacquire lock inc WORD [rcx]                                 }
testcase	{ 0x66, 0xf3, 0xf0, 0xff, 0x01                                           }, { xrelease lock inc WORD [rcx]                                 }
testcase	{ 0x66, 0xf3, 0xf0, 0xff, 0x01                                           }, { xrelease lock inc WORD [rcx]                                 }
testcase	{ 0xf0, 0xf2, 0x66, 0xff, 0x01                                           }, { lock xacquire inc WORD [rcx]                                 }
testcase	{ 0xf0, 0xf3, 0x66, 0xff, 0x01                                           }, { lock xrelease inc WORD [rcx]                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0xf7, 0x19                                           }, { xacquire lock neg WORD [rcx]                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0xf7, 0x19                                           }, { xacquire lock neg WORD [rcx]                                 }
testcase	{ 0x66, 0xf3, 0xf0, 0xf7, 0x19                                           }, { xrelease lock neg WORD [rcx]                                 }
testcase	{ 0x66, 0xf3, 0xf0, 0xf7, 0x19                                           }, { xrelease lock neg WORD [rcx]                                 }
testcase	{ 0xf0, 0xf2, 0x66, 0xf7, 0x19                                           }, { lock xacquire neg WORD [rcx]                                 }
testcase	{ 0xf0, 0xf3, 0x66, 0xf7, 0x19                                           }, { lock xrelease neg WORD [rcx]                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0xf7, 0x11                                           }, { xacquire lock not WORD [rcx]                                 }
testcase	{ 0x66, 0xf2, 0xf0, 0xf7, 0x11                                           }, { xacquire lock not WORD [rcx]                                 }
testcase	{ 0x66, 0xf3, 0xf0, 0xf7, 0x11                                           }, { xrelease lock not WORD [rcx]                                 }
testcase	{ 0x66, 0xf3, 0xf0, 0xf7, 0x11                                           }, { xrelease lock not WORD [rcx]                                 }
testcase	{ 0xf0, 0xf2, 0x66, 0xf7, 0x11                                           }, { lock xacquire not WORD [rcx]                                 }
testcase	{ 0xf0, 0xf3, 0x66, 0xf7, 0x11                                           }, { lock xrelease not WORD [rcx]                                 }
testcase	{ 0xf2, 0xf0, 0xff, 0x09                                                 }, { xacquire lock dec DWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0xff, 0x09                                                 }, { xacquire lock dec DWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0xff, 0x09                                                 }, { xrelease lock dec DWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0xff, 0x09                                                 }, { xrelease lock dec DWORD [rcx]                                }
testcase	{ 0xf0, 0xf2, 0xff, 0x09                                                 }, { lock xacquire dec DWORD [rcx]                                }
testcase	{ 0xf0, 0xf3, 0xff, 0x09                                                 }, { lock xrelease dec DWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0xff, 0x01                                                 }, { xacquire lock inc DWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0xff, 0x01                                                 }, { xacquire lock inc DWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0xff, 0x01                                                 }, { xrelease lock inc DWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0xff, 0x01                                                 }, { xrelease lock inc DWORD [rcx]                                }
testcase	{ 0xf0, 0xf2, 0xff, 0x01                                                 }, { lock xacquire inc DWORD [rcx]                                }
testcase	{ 0xf0, 0xf3, 0xff, 0x01                                                 }, { lock xrelease inc DWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0xf7, 0x19                                                 }, { xacquire lock neg DWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0xf7, 0x19                                                 }, { xacquire lock neg DWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0xf7, 0x19                                                 }, { xrelease lock neg DWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0xf7, 0x19                                                 }, { xrelease lock neg DWORD [rcx]                                }
testcase	{ 0xf0, 0xf2, 0xf7, 0x19                                                 }, { lock xacquire neg DWORD [rcx]                                }
testcase	{ 0xf0, 0xf3, 0xf7, 0x19                                                 }, { lock xrelease neg DWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0xf7, 0x11                                                 }, { xacquire lock not DWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0xf7, 0x11                                                 }, { xacquire lock not DWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0xf7, 0x11                                                 }, { xrelease lock not DWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0xf7, 0x11                                                 }, { xrelease lock not DWORD [rcx]                                }
testcase	{ 0xf0, 0xf2, 0xf7, 0x11                                                 }, { lock xacquire not DWORD [rcx]                                }
testcase	{ 0xf0, 0xf3, 0xf7, 0x11                                                 }, { lock xrelease not DWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x48, 0xff, 0x09                                           }, { xacquire lock dec QWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x48, 0xff, 0x09                                           }, { xacquire lock dec QWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0x48, 0xff, 0x09                                           }, { xrelease lock dec QWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0x48, 0xff, 0x09                                           }, { xrelease lock dec QWORD [rcx]                                }
testcase	{ 0xf0, 0xf2, 0x48, 0xff, 0x09                                           }, { lock xacquire dec QWORD [rcx]                                }
testcase	{ 0xf0, 0xf3, 0x48, 0xff, 0x09                                           }, { lock xrelease dec QWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x48, 0xff, 0x01                                           }, { xacquire lock inc QWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x48, 0xff, 0x01                                           }, { xacquire lock inc QWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0x48, 0xff, 0x01                                           }, { xrelease lock inc QWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0x48, 0xff, 0x01                                           }, { xrelease lock inc QWORD [rcx]                                }
testcase	{ 0xf0, 0xf2, 0x48, 0xff, 0x01                                           }, { lock xacquire inc QWORD [rcx]                                }
testcase	{ 0xf0, 0xf3, 0x48, 0xff, 0x01                                           }, { lock xrelease inc QWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x48, 0xf7, 0x19                                           }, { xacquire lock neg QWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x48, 0xf7, 0x19                                           }, { xacquire lock neg QWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0x48, 0xf7, 0x19                                           }, { xrelease lock neg QWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0x48, 0xf7, 0x19                                           }, { xrelease lock neg QWORD [rcx]                                }
testcase	{ 0xf0, 0xf2, 0x48, 0xf7, 0x19                                           }, { lock xacquire neg QWORD [rcx]                                }
testcase	{ 0xf0, 0xf3, 0x48, 0xf7, 0x19                                           }, { lock xrelease neg QWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x48, 0xf7, 0x11                                           }, { xacquire lock not QWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x48, 0xf7, 0x11                                           }, { xacquire lock not QWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0x48, 0xf7, 0x11                                           }, { xrelease lock not QWORD [rcx]                                }
testcase	{ 0xf3, 0xf0, 0x48, 0xf7, 0x11                                           }, { xrelease lock not QWORD [rcx]                                }
testcase	{ 0xf0, 0xf2, 0x48, 0xf7, 0x11                                           }, { lock xacquire not QWORD [rcx]                                }
testcase	{ 0xf0, 0xf3, 0x48, 0xf7, 0x11                                           }, { lock xrelease not QWORD [rcx]                                }
testcase	{ 0xf2, 0xf0, 0x0f, 0xc7, 0x09                                           }, { xacquire lock cmpxchg8b QWORD [rcx]                          }
testcase	{ 0xf2, 0xf0, 0x0f, 0xc7, 0x09                                           }, { xacquire lock cmpxchg8b QWORD [rcx]                          }
testcase	{ 0xf3, 0xf0, 0x0f, 0xc7, 0x09                                           }, { xrelease lock cmpxchg8b QWORD [rcx]                          }
testcase	{ 0xf3, 0xf0, 0x0f, 0xc7, 0x09                                           }, { xrelease lock cmpxchg8b QWORD [rcx]                          }
testcase	{ 0xf0, 0xf2, 0x0f, 0xc7, 0x09                                           }, { lock xacquire cmpxchg8b QWORD [rcx]                          }
testcase	{ 0xf0, 0xf3, 0x0f, 0xc7, 0x09                                           }, { lock xrelease cmpxchg8b QWORD [rcx]                          }
testcase	{ 0xf2, 0xf0, 0x0f, 0xb0, 0x09                                           }, { xacquire lock cmpxchg BYTE [rcx],cl                          }
testcase	{ 0xf2, 0xf0, 0x0f, 0xb0, 0x09                                           }, { xacquire lock cmpxchg BYTE [rcx],cl                          }
testcase	{ 0xf3, 0xf0, 0x0f, 0xb0, 0x09                                           }, { xrelease lock cmpxchg BYTE [rcx],cl                          }
testcase	{ 0xf3, 0xf0, 0x0f, 0xb0, 0x09                                           }, { xrelease lock cmpxchg BYTE [rcx],cl                          }
testcase	{ 0xf0, 0xf2, 0x0f, 0xb0, 0x09                                           }, { lock xacquire cmpxchg BYTE [rcx],cl                          }
testcase	{ 0xf0, 0xf3, 0x0f, 0xb0, 0x09                                           }, { lock xrelease cmpxchg BYTE [rcx],cl                          }
testcase	{ 0xf2, 0xf0, 0x0f, 0xc0, 0x09                                           }, { xacquire lock xadd BYTE [rcx],cl                             }
testcase	{ 0xf2, 0xf0, 0x0f, 0xc0, 0x09                                           }, { xacquire lock xadd BYTE [rcx],cl                             }
testcase	{ 0xf3, 0xf0, 0x0f, 0xc0, 0x09                                           }, { xrelease lock xadd BYTE [rcx],cl                             }
testcase	{ 0xf3, 0xf0, 0x0f, 0xc0, 0x09                                           }, { xrelease lock xadd BYTE [rcx],cl                             }
testcase	{ 0xf0, 0xf2, 0x0f, 0xc0, 0x09                                           }, { lock xacquire xadd BYTE [rcx],cl                             }
testcase	{ 0xf0, 0xf3, 0x0f, 0xc0, 0x09                                           }, { lock xrelease xadd BYTE [rcx],cl                             }
