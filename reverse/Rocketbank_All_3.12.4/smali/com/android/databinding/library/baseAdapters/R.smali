.class public final Lcom/android/databinding/library/baseAdapters/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/databinding/library/baseAdapters/R$id;
    }
.end annotation


# instance fields
.field public final alwaysSendButtonTitle:Ljava/lang/String;

.field public final cancelButtonTitle:Ljava/lang/String;

.field public final message:Ljava/lang/String;

.field public final sendButtonTitle:Ljava/lang/String;

.field public final showAlwaysSendButton:Z

.field public final showCancelButton:Z

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    iput-object p1, p0, Lcom/android/databinding/library/baseAdapters/R;->title:Ljava/lang/String;

    .line 1038
    iput-object p2, p0, Lcom/android/databinding/library/baseAdapters/R;->message:Ljava/lang/String;

    .line 1039
    iput-object p3, p0, Lcom/android/databinding/library/baseAdapters/R;->sendButtonTitle:Ljava/lang/String;

    .line 1040
    iput-boolean p4, p0, Lcom/android/databinding/library/baseAdapters/R;->showCancelButton:Z

    .line 1041
    iput-object p5, p0, Lcom/android/databinding/library/baseAdapters/R;->cancelButtonTitle:Ljava/lang/String;

    .line 1042
    iput-boolean p6, p0, Lcom/android/databinding/library/baseAdapters/R;->showAlwaysSendButton:Z

    .line 1043
    iput-object p7, p0, Lcom/android/databinding/library/baseAdapters/R;->alwaysSendButtonTitle:Ljava/lang/String;

    return-void
.end method
