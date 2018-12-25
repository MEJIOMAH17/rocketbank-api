.class public final Lcom/mattprecious/swirl/SwirlView;
.super Landroid/widget/ImageView;
.source "SwirlView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mattprecious/swirl/SwirlView$State;
    }
.end annotation


# instance fields
.field private state:Lcom/mattprecious/swirl/SwirlView$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/mattprecious/swirl/SwirlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget-object v0, Lcom/mattprecious/swirl/SwirlView$State;->OFF:Lcom/mattprecious/swirl/SwirlView$State;

    iput-object v0, p0, Lcom/mattprecious/swirl/SwirlView;->state:Lcom/mattprecious/swirl/SwirlView$State;

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 31
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "API 23 required."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 34
    :cond_0
    sget-object v0, Lcom/mattprecious/swirl/R$styleable;->swirl_Swirl:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 35
    sget p2, Lcom/mattprecious/swirl/R$styleable;->swirl_Swirl_swirl_state:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    .line 37
    invoke-static {}, Lcom/mattprecious/swirl/SwirlView$State;->values()[Lcom/mattprecious/swirl/SwirlView$State;

    move-result-object v0

    aget-object p2, v0, p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/mattprecious/swirl/SwirlView;->setState(Lcom/mattprecious/swirl/SwirlView$State;Z)V

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static getDrawable(Lcom/mattprecious/swirl/SwirlView$State;Lcom/mattprecious/swirl/SwirlView$State;Z)I
    .locals 2

    .line 65
    sget-object v0, Lcom/mattprecious/swirl/SwirlView$1;->$SwitchMap$com$mattprecious$swirl$SwirlView$State:[I

    invoke-virtual {p1}, Lcom/mattprecious/swirl/SwirlView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 97
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown state: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-eqz p2, :cond_1

    .line 88
    sget-object p1, Lcom/mattprecious/swirl/SwirlView$State;->ON:Lcom/mattprecious/swirl/SwirlView$State;

    if-ne p0, p1, :cond_0

    const p0, 0x7f080249

    return p0

    .line 90
    :cond_0
    sget-object p1, Lcom/mattprecious/swirl/SwirlView$State;->OFF:Lcom/mattprecious/swirl/SwirlView$State;

    if-ne p0, p1, :cond_1

    const p0, 0x7f080244

    return p0

    :cond_1
    const p0, 0x7f080240

    return p0

    :pswitch_1
    if-eqz p2, :cond_3

    .line 78
    sget-object p1, Lcom/mattprecious/swirl/SwirlView$State;->OFF:Lcom/mattprecious/swirl/SwirlView$State;

    if-ne p0, p1, :cond_2

    const p0, 0x7f08023f

    return p0

    .line 80
    :cond_2
    sget-object p1, Lcom/mattprecious/swirl/SwirlView$State;->ERROR:Lcom/mattprecious/swirl/SwirlView$State;

    if-ne p0, p1, :cond_3

    const p0, 0x7f080246

    return p0

    :cond_3
    const p0, 0x7f080247

    return p0

    :pswitch_2
    if-eqz p2, :cond_5

    .line 68
    sget-object p1, Lcom/mattprecious/swirl/SwirlView$State;->ON:Lcom/mattprecious/swirl/SwirlView$State;

    if-ne p0, p1, :cond_4

    const p0, 0x7f08023d

    return p0

    .line 70
    :cond_4
    sget-object p1, Lcom/mattprecious/swirl/SwirlView$State;->ERROR:Lcom/mattprecious/swirl/SwirlView$State;

    if-ne p0, p1, :cond_5

    const p0, 0x7f080242

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final setState(Lcom/mattprecious/swirl/SwirlView$State;Z)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/mattprecious/swirl/SwirlView;->state:Lcom/mattprecious/swirl/SwirlView$State;

    if-ne p1, v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/mattprecious/swirl/SwirlView;->state:Lcom/mattprecious/swirl/SwirlView$State;

    invoke-static {v0, p1, p2}, Lcom/mattprecious/swirl/SwirlView;->getDrawable(Lcom/mattprecious/swirl/SwirlView$State;Lcom/mattprecious/swirl/SwirlView$State;Z)I

    move-result p2

    if-nez p2, :cond_1

    .line 51
    invoke-virtual {p0, p2}, Lcom/mattprecious/swirl/SwirlView;->setImageResource(I)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/mattprecious/swirl/SwirlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 54
    invoke-virtual {p0, p2}, Lcom/mattprecious/swirl/SwirlView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    instance-of v0, p2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_2

    .line 57
    check-cast p2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 61
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/mattprecious/swirl/SwirlView;->state:Lcom/mattprecious/swirl/SwirlView$State;

    return-void
.end method
