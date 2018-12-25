.class public final Landroid/support/compat/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/compat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# instance fields
.field private cacheKey:Ljava/lang/String;

.field private postData:Ljava/lang/String;

.field private requestURL:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1020
    iput-object p1, p0, Landroid/support/compat/R$drawable;->requestURL:Ljava/lang/String;

    .line 1021
    iput-object p2, p0, Landroid/support/compat/R$drawable;->postData:Ljava/lang/String;

    .line 1022
    iput-object p3, p0, Landroid/support/compat/R$drawable;->version:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 2

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    new-instance v0, Ljava/util/Scanner;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 1027
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1028
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p1

    const-string v1, "url="

    .line 1029
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 1030
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/compat/R$drawable;->requestURL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "version="

    .line 1031
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    .line 1032
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/compat/R$drawable;->version:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "data="

    .line 1033
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    .line 1034
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/compat/R$drawable;->postData:Ljava/lang/String;

    goto :goto_0

    .line 1037
    :cond_3
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    return-void
.end method


# virtual methods
.method public final getCacheKey()Ljava/lang/String;
    .locals 1

    .line 1069
    iget-object v0, p0, Landroid/support/compat/R$drawable;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getPostData()Ljava/lang/String;
    .locals 1

    .line 1049
    iget-object v0, p0, Landroid/support/compat/R$drawable;->postData:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestURL()Ljava/lang/String;
    .locals 1

    .line 1057
    iget-object v0, p0, Landroid/support/compat/R$drawable;->requestURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 1041
    iget-object v0, p0, Landroid/support/compat/R$drawable;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final setCacheKey(Ljava/lang/String;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Landroid/support/compat/R$drawable;->cacheKey:Ljava/lang/String;

    return-void
.end method
