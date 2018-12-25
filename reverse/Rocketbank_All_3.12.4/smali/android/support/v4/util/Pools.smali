.class public final Landroid/support/v4/util/Pools;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/source/DocumentSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/util/Pools$SynchronizedPool;,
        Landroid/support/v4/util/Pools$SimplePool;,
        Landroid/support/v4/util/Pools$Pool;
    }
.end annotation


# instance fields
.field private file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    iput-object p1, p0, Landroid/support/v4/util/Pools;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final createDocument$49c2968a(Lcom/shockwave/pdfium/PdfiumCore;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1037
    iget-object p2, p0, Landroid/support/v4/util/Pools;->file:Ljava/io/File;

    const/high16 v0, 0x10000000

    invoke-static {p2, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    const/4 v0, 0x0

    .line 1038
    invoke-virtual {p1, p2, v0}, Lcom/shockwave/pdfium/PdfiumCore;->newDocument(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object p1

    return-object p1
.end method
