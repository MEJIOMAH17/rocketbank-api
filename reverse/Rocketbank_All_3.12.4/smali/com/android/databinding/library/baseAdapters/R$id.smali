.class public final Lcom/android/databinding/library/baseAdapters/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/databinding/library/baseAdapters/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# instance fields
.field public final identifierMask:I

.field public final logBufferSize:I

.field public final maxChainedExceptionDepth:I

.field public final maxCompleteSessionsCount:I

.field public final maxCustomExceptionEvents:I

.field public final maxCustomKeyValuePairs:I

.field public final sendSessionWithoutCrash:Z


# direct methods
.method public constructor <init>(IIIIIZI)V
    .locals 0

    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    iput p1, p0, Lcom/android/databinding/library/baseAdapters/R$id;->logBufferSize:I

    .line 1038
    iput p2, p0, Lcom/android/databinding/library/baseAdapters/R$id;->maxChainedExceptionDepth:I

    .line 1039
    iput p3, p0, Lcom/android/databinding/library/baseAdapters/R$id;->maxCustomExceptionEvents:I

    .line 1040
    iput p4, p0, Lcom/android/databinding/library/baseAdapters/R$id;->maxCustomKeyValuePairs:I

    .line 1041
    iput p5, p0, Lcom/android/databinding/library/baseAdapters/R$id;->identifierMask:I

    .line 1042
    iput-boolean p6, p0, Lcom/android/databinding/library/baseAdapters/R$id;->sendSessionWithoutCrash:Z

    .line 1043
    iput p7, p0, Lcom/android/databinding/library/baseAdapters/R$id;->maxCompleteSessionsCount:I

    return-void
.end method
