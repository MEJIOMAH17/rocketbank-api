.class public final Lcom/mattprecious/swirl/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mattprecious/swirl/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final swirl_Swirl:[I

.field public static final swirl_Swirl_swirl_state:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 95
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f040220

    aput v2, v0, v1

    sput-object v0, Lcom/mattprecious/swirl/R$styleable;->swirl_Swirl:[I

    return-void
.end method
