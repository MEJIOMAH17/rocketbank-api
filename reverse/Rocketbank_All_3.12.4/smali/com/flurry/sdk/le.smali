.class public final Lcom/flurry/sdk/le;
.super Lcom/flurry/sdk/jz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/le$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/flurry/sdk/ld;

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.flurry.android.sdk.FlurrySessionEvent"

    .line 29
    invoke-direct {p0, v0}, Lcom/flurry/sdk/jz;-><init>(Ljava/lang/String;)V

    return-void
.end method
