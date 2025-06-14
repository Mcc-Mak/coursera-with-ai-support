from flask import Flask, request, session
from json import *
import mariadb

def isAuthenticated():
    # SQL (R)
    conn = mariadb.connect(
        host="172.18.0.5",
        user="root",
        password="admin",
        database="c_keycloak_storage"
    )
    cur = conn.cursor()
    cur.execute(
        "SELECT * FROM c_keycloak_storage.access_token_storage WHERE username = ? AND access_token = ? AND user_ip_addr = ?",
        (
            session.get("username", ""),
            session.get("access_token", ""),
            request.remote_addr
        )
    )
    t_sessions = cur.fetchall()
    conn.close()
    return len(t_sessions)>0

def validate_access_token(response):
    if not isAuthenticated():
        return dumps({"error": "Authentication failed!"})
    else:
        return response

def GetProgramPreview():
    sample = [
        {
            "CONTENT": {
                "TEXT": "Computer Science: Programming with a Purpose",
                "CATEGORY": "Course",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/86/9297002bbc11e8b82d4d350d2ce323/IntroCSlogo.png?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "Princeton University",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-university-assets.s3.amazonaws.com/44/8de6f8bd5ac4cf7e36bdcf7ceff393/PU_subscription_logo.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Google Data Analytics",
                "CATEGORY": "Build toward a degree\n\nProfessional Certificate",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://d15cw65ipctsrr.cloudfront.net/65/26a1aee9b64fa1ad29132d5a87da64/Emily.jpg?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50&crop=faces"
            },
            "ORG": {
                "TEXT": "Google",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/4a/cb36835ae3421187080898a7ecc11d/Google-G_360x360.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Google Data Analytics",
                "CATEGORY": "Build toward a degree\n\nProfessional Certificate",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://d15cw65ipctsrr.cloudfront.net/65/26a1aee9b64fa1ad29132d5a87da64/Emily.jpg?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50&crop=faces"
            },
            "ORG": {
                "TEXT": "Google",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/4a/cb36835ae3421187080898a7ecc11d/Google-G_360x360.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Google IT Support",
                "CATEGORY": "Build toward a degree\n\nProfessional Certificate",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://d15cw65ipctsrr.cloudfront.net/12/82991645c24aa39ab1806062ef3e26/Stacy.jpg?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50&crop=faces"
            },
            "ORG": {
                "TEXT": "Google",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/4a/cb36835ae3421187080898a7ecc11d/Google-G_360x360.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Introduction to Generative AI Learning Path",
                "CATEGORY": "Specialization",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://d15cw65ipctsrr.cloudfront.net/72/503a97ff6345ff81c9cddc7b57f0be/gc-logo-1000x1000.png?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "Google Cloud",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/74/fa9028074941789429dfc1d1b71ddf/gc-logo-360x360.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Google Cybersecurity",
                "CATEGORY": "Build toward a degree\n\nProfessional Certificate",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://d15cw65ipctsrr.cloudfront.net/5a/3c6a5ab850443da5a4e982d1ab5f7e/Christopher.jpg?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50&crop=faces"
            },
            "ORG": {
                "TEXT": "Google",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/4a/cb36835ae3421187080898a7ecc11d/Google-G_360x360.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Python 3 Programming",
                "CATEGORY": "Specialization",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://d15cw65ipctsrr.cloudfront.net/be/0ce870e9cb11e8b2d233b4be6a9cf3/pythonfluency_1x1_4.png?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "University of Michigan",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-university-assets.s3.amazonaws.com/70/de505d47be7d3a063b51b6f856a6e2/New-Block-M-Stacked-Blue-295C_600x600.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Google IT Automation with Python",
                "CATEGORY": "Professional Certificate",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://d15cw65ipctsrr.cloudfront.net/6f/2a0dbe91f04e2b9ce48fabb56f161f/1060x596_GCC-photos_Brandon.png?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50&crop=faces"
            },
            "ORG": {
                "TEXT": "Google",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/4a/cb36835ae3421187080898a7ecc11d/Google-G_360x360.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Computer Science: Algorithms, Theory, and Machines",
                "CATEGORY": "Course",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/67/9b32e0140011e89140511cb73975a8/IntroCSlogo.png?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "Princeton University",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-university-assets.s3.amazonaws.com/44/8de6f8bd5ac4cf7e36bdcf7ceff393/PU_subscription_logo.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Introduction to Programming",
                "CATEGORY": "Build toward a degree\n\nCourse",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/de/85d45a1e1141ef8efe39dc0c7afce9/BSU-logo-vert-RGB.png?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "Ball State University",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/33/d3c2ebd8e24a18bf14a5754b613945/BSU-logo-vert-RGB-1-1-.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Master of Business Administration (iMBA)",
                "CATEGORY": "Earn a degree\n\nDegree",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://s3.amazonaws.com/coursera_assets/ddp/branding/illinois/iMBA+square.jpg?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "University of Illinois Urbana-Champaign",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/d8/42cdc0ab2011e8b910bdf80bed9f6c/CenterILblock-ISQUAREOrangeBackgrnd.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Maestría en Inteligencia Analítica de Datos",
                "CATEGORY": "Earn a degree\n\nDegree",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://s3.amazonaws.com/coursera_assets/ddp/branding/miad/maid_thumbnail.jpg?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "Universidad de los Andes",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-university-assets.s3.amazonaws.com/f2/1e0fc0666311e5bb98e7bc1b66e0e4/uniandessquare.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Computer Science: Programming with a Purpose",
                "CATEGORY": "Course",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/86/9297002bbc11e8b82d4d350d2ce323/IntroCSlogo.png?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "Princeton University",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-university-assets.s3.amazonaws.com/44/8de6f8bd5ac4cf7e36bdcf7ceff393/PU_subscription_logo.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Computer Science: Algorithms, Theory, and Machines",
                "CATEGORY": "Course",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/67/9b32e0140011e89140511cb73975a8/IntroCSlogo.png?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "Princeton University",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-university-assets.s3.amazonaws.com/44/8de6f8bd5ac4cf7e36bdcf7ceff393/PU_subscription_logo.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Foundations of Cybersecurity",
                "CATEGORY": "Build toward a degree\n\nCourse",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/f8/d2bb2e728e4622af311ff38339693d/1_CYBER_FOUNDATION.png?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50&crop=faces"
            },
            "ORG": {
                "TEXT": "Google",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/4a/cb36835ae3421187080898a7ecc11d/Google-G_360x360.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Play It Safe: Manage Security Risks",
                "CATEGORY": "Course",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/63/d40bcfaadf48b9b5350967ae683c53/2_CYBER_PLAYITSAFE.png?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50&crop=faces"
            },
            "ORG": {
                "TEXT": "Google",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/4a/cb36835ae3421187080898a7ecc11d/Google-G_360x360.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Introduction to Software Engineering",
                "CATEGORY": "Course",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/19/c88bc089344a4492577b40f2ac5c00/Introduction-to-Software-Engineering--Final-image.jpg?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "IBM",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/bb/f5ced2bdd4437aa79f00eb1bf7fbf0/IBM-Logo-Blk---Square.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Introduction to Artificial Intelligence (AI)",
                "CATEGORY": "Course",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/a7/edd3b41ddd45298d7bbcb04b19fba6/200766_Logo-Image_1200x1200pxl-copy-3.png?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "IBM",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/bb/f5ced2bdd4437aa79f00eb1bf7fbf0/IBM-Logo-Blk---Square.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Build a free website with WordPress",
                "CATEGORY": "Guided Project",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/da/c8df3880a940c8a4bb5e7467eb202a/wordpress_logo.png?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "Coursera Project Network",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/89/a0db8f3ea3417ca90d4f3a4ca1d73e/coursera-projectnetwork-purplesquare.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Business Analysis & Process Management",
                "CATEGORY": "Guided Project",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/59/630408b17e41429a019ada61f22bc8/Courses-Project-images-06.png?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "Coursera Project Network",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/89/a0db8f3ea3417ca90d4f3a4ca1d73e/coursera-projectnetwork-purplesquare.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Build a computer vision app with Azure Cognitive Services",
                "CATEGORY": "Guided Project",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/5d/b8e0f1e4a148d69cbcd32936bec7ae/abc.jpg?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "Microsoft",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/cc/61dbdf2c1c475d82d3b8bf8eee1bda/MSFT-stacked-logo_FINAL.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "AWS S3 Basics",
                "CATEGORY": "Guided Project",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/5d/853cce3d1a4854975b947e7076c576/Project-Logo3.png?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "Coursera Project Network",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/89/a0db8f3ea3417ca90d4f3a4ca1d73e/coursera-projectnetwork-purplesquare.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Learn to Program: The Fundamentals",
                "CATEGORY": "Course",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera.s3.amazonaws.com/topics/programming1/large-icon.png?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "University of Toronto",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-university-assets.s3.amazonaws.com/04/1df8943d27a485a986a3ebf10c83d9/UofT-Crest-Square.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "ChatGPT Prompt Engineering for Developers",
                "CATEGORY": "Project",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/cf/379452534d4963876b4fa6be58d6c1/Screenshot-2023-07-28-at-12.24.35-PM.png?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "DeepLearning.AI",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/b4/5cb90bb92f420b99bf323a0356f451/Icon.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Build a Website using an API with HTML, JavaScript, and JSON",
                "CATEGORY": "Guided Project",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/75/cedcfd3d754f4cb9b3dbb4e13a102c/logo-data-analysis.png?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "Coursera Project Network",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/89/a0db8f3ea3417ca90d4f3a4ca1d73e/coursera-projectnetwork-purplesquare.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        },
        {
            "CONTENT": {
                "TEXT": "Foundations of Data Science: K-Means Clustering in Python",
                "CATEGORY": "Course",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/e4/9969c017f011e9ab95e949bb9aab53/iStock-897683944---crop.jpg?auto=format%2C%20compress%2C%20enhance&dpr=1&w=320&h=180&fit=crop&q=50"
            },
            "ORG": {
                "TEXT": "University of London",
                "IMG": "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/http://coursera-university-assets.s3.amazonaws.com/fb/b28a301e0211e8a40e23e4176c8e4a/UoL-Logo_180x180.png?auto=format%2Ccompress&dpr=3&w=24&h=24"
            }
        }
    ]
    response = dumps(sample,indent=4,ensure_ascii=False)
    return validate_access_token(response)

def GetProgramInfo():
    sample = []
    response = dumps(sample,indent=4,ensure_ascii=False)
    return validate_access_token(response)