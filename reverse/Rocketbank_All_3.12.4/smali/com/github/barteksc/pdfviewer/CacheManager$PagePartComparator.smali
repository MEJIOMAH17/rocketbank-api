.class final Lcom/github/barteksc/pdfviewer/CacheManager$PagePartComparator;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PagePartComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/github/barteksc/pdfviewer/model/PagePart;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/barteksc/pdfviewer/CacheManager;


# direct methods
.method constructor <init>(Lcom/github/barteksc/pdfviewer/CacheManager;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/CacheManager$PagePartComparator;->this$0:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 168
    check-cast p1, Lcom/github/barteksc/pdfviewer/model/PagePart;

    check-cast p2, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 1171
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getCacheOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getCacheOrder()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1174
    :cond_0
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getCacheOrder()I

    move-result p1

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getCacheOrder()I

    move-result p2

    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
