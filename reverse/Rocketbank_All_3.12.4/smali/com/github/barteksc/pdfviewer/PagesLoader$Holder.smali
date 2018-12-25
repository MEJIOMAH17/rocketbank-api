.class final Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;
.super Ljava/lang/Object;
.source "PagesLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/PagesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Holder"
.end annotation


# instance fields
.field col:I

.field page:I

.field row:I

.field final synthetic this$0:Lcom/github/barteksc/pdfviewer/PagesLoader;


# direct methods
.method private constructor <init>(Lcom/github/barteksc/pdfviewer/PagesLoader;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->this$0:Lcom/github/barteksc/pdfviewer/PagesLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/barteksc/pdfviewer/PagesLoader;B)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;-><init>(Lcom/github/barteksc/pdfviewer/PagesLoader;)V

    return-void
.end method
