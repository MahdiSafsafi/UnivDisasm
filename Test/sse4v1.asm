%macro testcase 2
 %ifdef BIN
  db %1
 %endif
 %ifdef SRC
  %2
 %endif
%endmacro


bits 64

testcase	{ 0x66, 0x0f, 0x3a, 0x0d, 0x01, 0x00                                     }, { blendpd xmm0,OWORD [rcx],0x0                                 }
testcase	{ 0x66, 0x0f, 0x3a, 0x0d, 0xc1, 0x00                                     }, { blendpd xmm0,xmm1,0x0                                        }
testcase	{ 0x66, 0x0f, 0x3a, 0x0c, 0x01, 0x00                                     }, { blendps xmm0,OWORD [rcx],0x0                                 }
testcase	{ 0x66, 0x0f, 0x3a, 0x0c, 0xc1, 0x00                                     }, { blendps xmm0,xmm1,0x0                                        }
testcase	{ 0x66, 0x0f, 0x38, 0x15, 0x01                                           }, { blendvpd xmm0,OWORD [rcx],xmm0                               }
testcase	{ 0x66, 0x0f, 0x38, 0x15, 0xc1                                           }, { blendvpd xmm0,xmm1,xmm0                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x15, 0x01                                           }, { blendvpd xmm0,OWORD [rcx],xmm0                               }
testcase	{ 0x66, 0x0f, 0x38, 0x15, 0xc1                                           }, { blendvpd xmm0,xmm1,xmm0                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x14, 0x01                                           }, { blendvps xmm0,OWORD [rcx],xmm0                               }
testcase	{ 0x66, 0x0f, 0x38, 0x14, 0xc1                                           }, { blendvps xmm0,xmm1,xmm0                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x14, 0x01                                           }, { blendvps xmm0,OWORD [rcx],xmm0                               }
testcase	{ 0x66, 0x0f, 0x38, 0x14, 0xc1                                           }, { blendvps xmm0,xmm1,xmm0                                      }
testcase	{ 0x66, 0x0f, 0x3a, 0x41, 0x01, 0x00                                     }, { dppd   xmm0,OWORD [rcx],0x0                                  }
testcase	{ 0x66, 0x0f, 0x3a, 0x41, 0xc1, 0x00                                     }, { dppd   xmm0,xmm1,0x0                                         }
testcase	{ 0x66, 0x0f, 0x3a, 0x40, 0x01, 0x00                                     }, { dpps   xmm0,OWORD [rcx],0x0                                  }
testcase	{ 0x66, 0x0f, 0x3a, 0x40, 0xc1, 0x00                                     }, { dpps   xmm0,xmm1,0x0                                         }
testcase	{ 0x66, 0x0f, 0x3a, 0x17, 0xc1, 0x00                                     }, { extractps ecx,xmm0,0x0                                       }
testcase	{ 0x66, 0x0f, 0x3a, 0x17, 0xc1, 0x00                                     }, { extractps ecx,xmm0,0x0                                       }
testcase	{ 0x66, 0x0f, 0x3a, 0x17, 0x01, 0x00                                     }, { extractps DWORD [rcx],xmm0,0x0                               }
testcase	{ 0x66, 0x0f, 0x3a, 0x21, 0xc1, 0x00                                     }, { insertps xmm0,xmm1,0x0                                       }
testcase	{ 0x66, 0x0f, 0x3a, 0x21, 0x01, 0x00                                     }, { insertps xmm0,DWORD [rcx],0x0                                }
testcase	{ 0x66, 0x0f, 0x38, 0x2a, 0x01                                           }, { movntdqa xmm0,OWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x3a, 0x42, 0x01, 0x00                                     }, { mpsadbw xmm0,OWORD [rcx],0x0                                 }
testcase	{ 0x66, 0x0f, 0x3a, 0x42, 0xc1, 0x00                                     }, { mpsadbw xmm0,xmm1,0x0                                        }
testcase	{ 0x66, 0x0f, 0x38, 0x2b, 0x01                                           }, { packusdw xmm0,OWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x2b, 0xc1                                           }, { packusdw xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x10, 0x01                                           }, { pblendvb xmm0,OWORD [rcx],xmm0                               }
testcase	{ 0x66, 0x0f, 0x38, 0x10, 0xc1                                           }, { pblendvb xmm0,xmm1,xmm0                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x10, 0x01                                           }, { pblendvb xmm0,OWORD [rcx],xmm0                               }
testcase	{ 0x66, 0x0f, 0x38, 0x10, 0xc1                                           }, { pblendvb xmm0,xmm1,xmm0                                      }
testcase	{ 0x66, 0x0f, 0x3a, 0x0e, 0x01, 0x00                                     }, { pblendw xmm0,OWORD [rcx],0x0                                 }
testcase	{ 0x66, 0x0f, 0x3a, 0x0e, 0xc1, 0x00                                     }, { pblendw xmm0,xmm1,0x0                                        }
testcase	{ 0x66, 0x0f, 0x38, 0x29, 0xc1                                           }, { pcmpeqq xmm0,xmm1                                            }
testcase	{ 0x66, 0x0f, 0x38, 0x29, 0x01                                           }, { pcmpeqq xmm0,OWORD [rcx]                                     }
testcase	{ 0x66, 0x0f, 0x3a, 0x14, 0xc1, 0x00                                     }, { pextrb ecx,xmm0,0x0                                          }
testcase	{ 0x66, 0x0f, 0x3a, 0x14, 0xc1, 0x00                                     }, { pextrb ecx,xmm0,0x0                                          }
testcase	{ 0x66, 0x0f, 0x3a, 0x14, 0x01, 0x00                                     }, { pextrb BYTE [rcx],xmm0,0x0                                   }
testcase	{ 0x66, 0x0f, 0x3a, 0x16, 0xc1, 0x00                                     }, { pextrd ecx,xmm0,0x0                                          }
testcase	{ 0x66, 0x0f, 0x3a, 0x16, 0x01, 0x00                                     }, { pextrd DWORD [rcx],xmm0,0x0                                  }
testcase	{ 0x66, 0x48, 0x0f, 0x3a, 0x16, 0xc1, 0x00                               }, { pextrq rcx,xmm0,0x0                                          }
testcase	{ 0x66, 0x48, 0x0f, 0x3a, 0x16, 0x01, 0x00                               }, { pextrq QWORD [rcx],xmm0,0x0                                  }
testcase	{ 0x66, 0x0f, 0xc5, 0xc8, 0x00                                           }, { pextrw ecx,xmm0,0x0                                          }
testcase	{ 0x66, 0x0f, 0xc5, 0xc8, 0x00                                           }, { pextrw ecx,xmm0,0x0                                          }
testcase	{ 0x66, 0x0f, 0x3a, 0x15, 0x01, 0x00                                     }, { pextrw WORD [rcx],xmm0,0x0                                   }
testcase	{ 0x66, 0x0f, 0x38, 0x41, 0xc1                                           }, { phminposuw xmm0,xmm1                                         }
testcase	{ 0x66, 0x0f, 0x38, 0x41, 0x01                                           }, { phminposuw xmm0,OWORD [rcx]                                  }
testcase	{ 0x66, 0x0f, 0x3a, 0x20, 0x01, 0x00                                     }, { pinsrb xmm0,BYTE [rcx],0x0                                   }
testcase	{ 0x66, 0x0f, 0x3a, 0x20, 0xc1, 0x00                                     }, { pinsrb xmm0,ecx,0x0                                          }
testcase	{ 0x66, 0x0f, 0x3a, 0x20, 0xc1, 0x00                                     }, { pinsrb xmm0,ecx,0x0                                          }
testcase	{ 0x66, 0x0f, 0x3a, 0x22, 0x01, 0x00                                     }, { pinsrd xmm0,DWORD [rcx],0x0                                  }
testcase	{ 0x66, 0x0f, 0x3a, 0x22, 0xc1, 0x00                                     }, { pinsrd xmm0,ecx,0x0                                          }
testcase	{ 0x66, 0x48, 0x0f, 0x3a, 0x22, 0x01, 0x00                               }, { pinsrq xmm0,QWORD [rcx],0x0                                  }
testcase	{ 0x66, 0x48, 0x0f, 0x3a, 0x22, 0xc1, 0x00                               }, { pinsrq xmm0,rcx,0x0                                          }
testcase	{ 0x66, 0x0f, 0x38, 0x3c, 0xc1                                           }, { pmaxsb xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x3c, 0x01                                           }, { pmaxsb xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x3d, 0xc1                                           }, { pmaxsd xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x3d, 0x01                                           }, { pmaxsd xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x3f, 0xc1                                           }, { pmaxud xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x3f, 0x01                                           }, { pmaxud xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x3e, 0xc1                                           }, { pmaxuw xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x3e, 0x01                                           }, { pmaxuw xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x38, 0xc1                                           }, { pminsb xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x38, 0x01                                           }, { pminsb xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x39, 0xc1                                           }, { pminsd xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x39, 0x01                                           }, { pminsd xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x3b, 0xc1                                           }, { pminud xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x3b, 0x01                                           }, { pminud xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x3a, 0xc1                                           }, { pminuw xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x3a, 0x01                                           }, { pminuw xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x20, 0xc1                                           }, { pmovsxbw xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x20, 0x01                                           }, { pmovsxbw xmm0,QWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x21, 0xc1                                           }, { pmovsxbd xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x21, 0x01                                           }, { pmovsxbd xmm0,DWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x22, 0xc1                                           }, { pmovsxbq xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x22, 0x01                                           }, { pmovsxbq xmm0,WORD [rcx]                                     }
testcase	{ 0x66, 0x0f, 0x38, 0x23, 0xc1                                           }, { pmovsxwd xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x23, 0x01                                           }, { pmovsxwd xmm0,QWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x24, 0xc1                                           }, { pmovsxwq xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x24, 0x01                                           }, { pmovsxwq xmm0,DWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x25, 0xc1                                           }, { pmovsxdq xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x25, 0x01                                           }, { pmovsxdq xmm0,QWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x30, 0xc1                                           }, { pmovzxbw xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x30, 0x01                                           }, { pmovzxbw xmm0,QWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x31, 0xc1                                           }, { pmovzxbd xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x31, 0x01                                           }, { pmovzxbd xmm0,DWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x32, 0xc1                                           }, { pmovzxbq xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x32, 0x01                                           }, { pmovzxbq xmm0,WORD [rcx]                                     }
testcase	{ 0x66, 0x0f, 0x38, 0x33, 0xc1                                           }, { pmovzxwd xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x33, 0x01                                           }, { pmovzxwd xmm0,QWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x34, 0xc1                                           }, { pmovzxwq xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x34, 0x01                                           }, { pmovzxwq xmm0,DWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x35, 0xc1                                           }, { pmovzxdq xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x35, 0x01                                           }, { pmovzxdq xmm0,QWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x28, 0xc1                                           }, { pmuldq xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x28, 0x01                                           }, { pmuldq xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x40, 0xc1                                           }, { pmulld xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x40, 0x01                                           }, { pmulld xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x17, 0xc1                                           }, { ptest  xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x17, 0x01                                           }, { ptest  xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x3a, 0x09, 0x01, 0x00                                     }, { roundpd xmm0,OWORD [rcx],0x0                                 }
testcase	{ 0x66, 0x0f, 0x3a, 0x09, 0xc1, 0x00                                     }, { roundpd xmm0,xmm1,0x0                                        }
testcase	{ 0x66, 0x0f, 0x3a, 0x08, 0x01, 0x00                                     }, { roundps xmm0,OWORD [rcx],0x0                                 }
testcase	{ 0x66, 0x0f, 0x3a, 0x08, 0xc1, 0x00                                     }, { roundps xmm0,xmm1,0x0                                        }
testcase	{ 0x66, 0x0f, 0x3a, 0x0b, 0x01, 0x00                                     }, { roundsd xmm0,QWORD [rcx],0x0                                 }
testcase	{ 0x66, 0x0f, 0x3a, 0x0b, 0xc1, 0x00                                     }, { roundsd xmm0,xmm1,0x0                                        }
testcase	{ 0x66, 0x0f, 0x3a, 0x0a, 0x01, 0x00                                     }, { roundss xmm0,DWORD [rcx],0x0                                 }
testcase	{ 0x66, 0x0f, 0x3a, 0x0a, 0xc1, 0x00                                     }, { roundss xmm0,xmm1,0x0                                        }
testcase	{ 0x66, 0x0f, 0x3a, 0x0d, 0x01, 0x00                                     }, { blendpd xmm0,OWORD [rcx],0x0                                 }
testcase	{ 0x66, 0x0f, 0x3a, 0x0d, 0xc1, 0x00                                     }, { blendpd xmm0,xmm1,0x0                                        }
testcase	{ 0x66, 0x0f, 0x3a, 0x0c, 0x01, 0x00                                     }, { blendps xmm0,OWORD [rcx],0x0                                 }
testcase	{ 0x66, 0x0f, 0x3a, 0x0c, 0xc1, 0x00                                     }, { blendps xmm0,xmm1,0x0                                        }
testcase	{ 0x66, 0x0f, 0x38, 0x15, 0x01                                           }, { blendvpd xmm0,OWORD [rcx],xmm0                               }
testcase	{ 0x66, 0x0f, 0x38, 0x15, 0xc1                                           }, { blendvpd xmm0,xmm1,xmm0                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x14, 0x01                                           }, { blendvps xmm0,OWORD [rcx],xmm0                               }
testcase	{ 0x66, 0x0f, 0x38, 0x14, 0xc1                                           }, { blendvps xmm0,xmm1,xmm0                                      }
testcase	{ 0x66, 0x0f, 0x3a, 0x41, 0x01, 0x00                                     }, { dppd   xmm0,OWORD [rcx],0x0                                  }
testcase	{ 0x66, 0x0f, 0x3a, 0x41, 0xc1, 0x00                                     }, { dppd   xmm0,xmm1,0x0                                         }
testcase	{ 0x66, 0x0f, 0x3a, 0x40, 0x01, 0x00                                     }, { dpps   xmm0,OWORD [rcx],0x0                                  }
testcase	{ 0x66, 0x0f, 0x3a, 0x40, 0xc1, 0x00                                     }, { dpps   xmm0,xmm1,0x0                                         }
testcase	{ 0x66, 0x0f, 0x3a, 0x17, 0xc1, 0x00                                     }, { extractps ecx,xmm0,0x0                                       }
testcase	{ 0x66, 0x0f, 0x3a, 0x17, 0xc1, 0x00                                     }, { extractps ecx,xmm0,0x0                                       }
testcase	{ 0x66, 0x0f, 0x3a, 0x17, 0x01, 0x00                                     }, { extractps DWORD [rcx],xmm0,0x0                               }
testcase	{ 0x66, 0x0f, 0x3a, 0x21, 0xc1, 0x00                                     }, { insertps xmm0,xmm1,0x0                                       }
testcase	{ 0x66, 0x0f, 0x3a, 0x21, 0x01, 0x00                                     }, { insertps xmm0,DWORD [rcx],0x0                                }
testcase	{ 0x66, 0x0f, 0x38, 0x2a, 0x01                                           }, { movntdqa xmm0,OWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x3a, 0x42, 0x01, 0x00                                     }, { mpsadbw xmm0,OWORD [rcx],0x0                                 }
testcase	{ 0x66, 0x0f, 0x3a, 0x42, 0xc1, 0x00                                     }, { mpsadbw xmm0,xmm1,0x0                                        }
testcase	{ 0x66, 0x0f, 0x38, 0x2b, 0x01                                           }, { packusdw xmm0,OWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x2b, 0xc1                                           }, { packusdw xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x10, 0x01                                           }, { pblendvb xmm0,OWORD [rcx],xmm0                               }
testcase	{ 0x66, 0x0f, 0x38, 0x10, 0xc1                                           }, { pblendvb xmm0,xmm1,xmm0                                      }
testcase	{ 0x66, 0x0f, 0x3a, 0x0e, 0x01, 0x00                                     }, { pblendw xmm0,OWORD [rcx],0x0                                 }
testcase	{ 0x66, 0x0f, 0x3a, 0x0e, 0xc1, 0x00                                     }, { pblendw xmm0,xmm1,0x0                                        }
testcase	{ 0x66, 0x0f, 0x38, 0x29, 0xc1                                           }, { pcmpeqq xmm0,xmm1                                            }
testcase	{ 0x66, 0x0f, 0x38, 0x29, 0x01                                           }, { pcmpeqq xmm0,OWORD [rcx]                                     }
testcase	{ 0x66, 0x0f, 0x3a, 0x14, 0xc1, 0x00                                     }, { pextrb ecx,xmm0,0x0                                          }
testcase	{ 0x66, 0x0f, 0x3a, 0x14, 0xc1, 0x00                                     }, { pextrb ecx,xmm0,0x0                                          }
testcase	{ 0x66, 0x0f, 0x3a, 0x14, 0x01, 0x00                                     }, { pextrb BYTE [rcx],xmm0,0x0                                   }
testcase	{ 0x66, 0x0f, 0x3a, 0x16, 0xc1, 0x00                                     }, { pextrd ecx,xmm0,0x0                                          }
testcase	{ 0x66, 0x0f, 0x3a, 0x16, 0x01, 0x00                                     }, { pextrd DWORD [rcx],xmm0,0x0                                  }
testcase	{ 0x66, 0x48, 0x0f, 0x3a, 0x16, 0xc1, 0x00                               }, { pextrq rcx,xmm0,0x0                                          }
testcase	{ 0x66, 0x48, 0x0f, 0x3a, 0x16, 0x01, 0x00                               }, { pextrq QWORD [rcx],xmm0,0x0                                  }
testcase	{ 0x66, 0x0f, 0xc5, 0xc8, 0x00                                           }, { pextrw ecx,xmm0,0x0                                          }
testcase	{ 0x66, 0x0f, 0xc5, 0xc8, 0x00                                           }, { pextrw ecx,xmm0,0x0                                          }
testcase	{ 0x66, 0x0f, 0x3a, 0x15, 0x01, 0x00                                     }, { pextrw WORD [rcx],xmm0,0x0                                   }
testcase	{ 0x66, 0x0f, 0x38, 0x41, 0xc1                                           }, { phminposuw xmm0,xmm1                                         }
testcase	{ 0x66, 0x0f, 0x38, 0x41, 0x01                                           }, { phminposuw xmm0,OWORD [rcx]                                  }
testcase	{ 0x66, 0x0f, 0x3a, 0x20, 0x01, 0x00                                     }, { pinsrb xmm0,BYTE [rcx],0x0                                   }
testcase	{ 0x66, 0x0f, 0x3a, 0x20, 0xc1, 0x00                                     }, { pinsrb xmm0,ecx,0x0                                          }
testcase	{ 0x66, 0x0f, 0x3a, 0x20, 0xc1, 0x00                                     }, { pinsrb xmm0,ecx,0x0                                          }
testcase	{ 0x66, 0x0f, 0x3a, 0x22, 0x01, 0x00                                     }, { pinsrd xmm0,DWORD [rcx],0x0                                  }
testcase	{ 0x66, 0x0f, 0x3a, 0x22, 0xc1, 0x00                                     }, { pinsrd xmm0,ecx,0x0                                          }
testcase	{ 0x66, 0x48, 0x0f, 0x3a, 0x22, 0x01, 0x00                               }, { pinsrq xmm0,QWORD [rcx],0x0                                  }
testcase	{ 0x66, 0x48, 0x0f, 0x3a, 0x22, 0xc1, 0x00                               }, { pinsrq xmm0,rcx,0x0                                          }
testcase	{ 0x66, 0x0f, 0x38, 0x3c, 0xc1                                           }, { pmaxsb xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x3c, 0x01                                           }, { pmaxsb xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x3d, 0xc1                                           }, { pmaxsd xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x3d, 0x01                                           }, { pmaxsd xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x3f, 0xc1                                           }, { pmaxud xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x3f, 0x01                                           }, { pmaxud xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x3e, 0xc1                                           }, { pmaxuw xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x3e, 0x01                                           }, { pmaxuw xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x38, 0xc1                                           }, { pminsb xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x38, 0x01                                           }, { pminsb xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x39, 0xc1                                           }, { pminsd xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x39, 0x01                                           }, { pminsd xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x3b, 0xc1                                           }, { pminud xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x3b, 0x01                                           }, { pminud xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x3a, 0xc1                                           }, { pminuw xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x3a, 0x01                                           }, { pminuw xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x20, 0xc1                                           }, { pmovsxbw xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x20, 0x01                                           }, { pmovsxbw xmm0,QWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x21, 0xc1                                           }, { pmovsxbd xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x21, 0x01                                           }, { pmovsxbd xmm0,DWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x22, 0xc1                                           }, { pmovsxbq xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x22, 0x01                                           }, { pmovsxbq xmm0,WORD [rcx]                                     }
testcase	{ 0x66, 0x0f, 0x38, 0x23, 0xc1                                           }, { pmovsxwd xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x23, 0x01                                           }, { pmovsxwd xmm0,QWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x24, 0xc1                                           }, { pmovsxwq xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x24, 0x01                                           }, { pmovsxwq xmm0,DWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x25, 0xc1                                           }, { pmovsxdq xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x25, 0x01                                           }, { pmovsxdq xmm0,QWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x30, 0xc1                                           }, { pmovzxbw xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x30, 0x01                                           }, { pmovzxbw xmm0,QWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x31, 0xc1                                           }, { pmovzxbd xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x31, 0x01                                           }, { pmovzxbd xmm0,DWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x32, 0xc1                                           }, { pmovzxbq xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x32, 0x01                                           }, { pmovzxbq xmm0,WORD [rcx]                                     }
testcase	{ 0x66, 0x0f, 0x38, 0x33, 0xc1                                           }, { pmovzxwd xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x33, 0x01                                           }, { pmovzxwd xmm0,QWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x34, 0xc1                                           }, { pmovzxwq xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x34, 0x01                                           }, { pmovzxwq xmm0,DWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x35, 0xc1                                           }, { pmovzxdq xmm0,xmm1                                           }
testcase	{ 0x66, 0x0f, 0x38, 0x35, 0x01                                           }, { pmovzxdq xmm0,QWORD [rcx]                                    }
testcase	{ 0x66, 0x0f, 0x38, 0x28, 0xc1                                           }, { pmuldq xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x28, 0x01                                           }, { pmuldq xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x40, 0xc1                                           }, { pmulld xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x40, 0x01                                           }, { pmulld xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x38, 0x17, 0xc1                                           }, { ptest  xmm0,xmm1                                             }
testcase	{ 0x66, 0x0f, 0x38, 0x17, 0x01                                           }, { ptest  xmm0,OWORD [rcx]                                      }
testcase	{ 0x66, 0x0f, 0x3a, 0x09, 0x01, 0x00                                     }, { roundpd xmm0,OWORD [rcx],0x0                                 }
testcase	{ 0x66, 0x0f, 0x3a, 0x09, 0xc1, 0x00                                     }, { roundpd xmm0,xmm1,0x0                                        }
testcase	{ 0x66, 0x0f, 0x3a, 0x08, 0x01, 0x00                                     }, { roundps xmm0,OWORD [rcx],0x0                                 }
testcase	{ 0x66, 0x0f, 0x3a, 0x08, 0xc1, 0x00                                     }, { roundps xmm0,xmm1,0x0                                        }
testcase	{ 0x66, 0x0f, 0x3a, 0x0b, 0x01, 0x00                                     }, { roundsd xmm0,QWORD [rcx],0x0                                 }
testcase	{ 0x66, 0x0f, 0x3a, 0x0b, 0xc1, 0x00                                     }, { roundsd xmm0,xmm1,0x0                                        }
testcase	{ 0x66, 0x0f, 0x3a, 0x0a, 0x01, 0x00                                     }, { roundss xmm0,DWORD [rcx],0x0                                 }
testcase	{ 0x66, 0x0f, 0x3a, 0x0a, 0xc1, 0x00                                     }, { roundss xmm0,xmm1,0x0                                        }
