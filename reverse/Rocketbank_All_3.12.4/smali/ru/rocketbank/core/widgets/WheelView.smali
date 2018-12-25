.class public Lru/rocketbank/core/widgets/WheelView;
.super Landroid/widget/ScrollView;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WheelView"


# instance fields
.field private context:Landroid/content/Context;

.field displayItemCount:I

.field initialY:I

.field itemHeight:I

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field newCheck:I

.field offset:I

.field private onWheelViewListener:Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;

.field paint:Landroid/graphics/Paint;

.field private scrollDirection:I

.field scrollerTask:Ljava/lang/Runnable;

.field selectedAreaBorder:[I

.field selectedIndex:I

.field viewWidth:I

.field private views:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 85
    iput v0, p0, Lru/rocketbank/core/widgets/WheelView;->offset:I

    .line 97
    iput v0, p0, Lru/rocketbank/core/widgets/WheelView;->selectedIndex:I

    const/16 v0, 0x32

    .line 165
    iput v0, p0, Lru/rocketbank/core/widgets/WheelView;->newCheck:I

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    const/4 v0, -0x1

    .line 307
    iput v0, p0, Lru/rocketbank/core/widgets/WheelView;->scrollDirection:I

    .line 46
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/WheelView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 85
    iput p2, p0, Lru/rocketbank/core/widgets/WheelView;->offset:I

    .line 97
    iput p2, p0, Lru/rocketbank/core/widgets/WheelView;->selectedIndex:I

    const/16 p2, 0x32

    .line 165
    iput p2, p0, Lru/rocketbank/core/widgets/WheelView;->newCheck:I

    const/4 p2, 0x0

    .line 183
    iput p2, p0, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    const/4 p2, -0x1

    .line 307
    iput p2, p0, Lru/rocketbank/core/widgets/WheelView;->scrollDirection:I

    .line 51
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/WheelView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 85
    iput p2, p0, Lru/rocketbank/core/widgets/WheelView;->offset:I

    .line 97
    iput p2, p0, Lru/rocketbank/core/widgets/WheelView;->selectedIndex:I

    const/16 p2, 0x32

    .line 165
    iput p2, p0, Lru/rocketbank/core/widgets/WheelView;->newCheck:I

    const/4 p2, 0x0

    .line 183
    iput p2, p0, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    const/4 p2, -0x1

    .line 307
    iput p2, p0, Lru/rocketbank/core/widgets/WheelView;->scrollDirection:I

    .line 56
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/WheelView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/core/widgets/WheelView;)V
    .locals 3

    .line 3368
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView;->onWheelViewListener:Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;

    if-eqz v0, :cond_0

    .line 3369
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView;->onWheelViewListener:Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;

    iget v1, p0, Lru/rocketbank/core/widgets/WheelView;->selectedIndex:I

    iget-object v2, p0, Lru/rocketbank/core/widgets/WheelView;->items:Ljava/util/List;

    iget p0, p0, Lru/rocketbank/core/widgets/WheelView;->selectedIndex:I

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;->onSelected(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lru/rocketbank/core/widgets/WheelView;)[I
    .locals 4

    .line 4298
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView;->selectedAreaBorder:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 4299
    new-array v0, v0, [I

    iput-object v0, p0, Lru/rocketbank/core/widgets/WheelView;->selectedAreaBorder:[I

    .line 4300
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView;->selectedAreaBorder:[I

    const/4 v1, 0x0

    iget v2, p0, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    iget v3, p0, Lru/rocketbank/core/widgets/WheelView;->offset:I

    mul-int/2addr v2, v3

    aput v2, v0, v1

    .line 4301
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView;->selectedAreaBorder:[I

    iget v1, p0, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    iget v2, p0, Lru/rocketbank/core/widgets/WheelView;->offset:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    aput v1, v0, v3

    .line 4303
    :cond_0
    iget-object p0, p0, Lru/rocketbank/core/widgets/WheelView;->selectedAreaBorder:[I

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 101
    iput-object p1, p0, Lru/rocketbank/core/widgets/WheelView;->context:Landroid/content/Context;

    .line 105
    sget-object v0, Lru/rocketbank/core/widgets/WheelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/WheelView;->setVerticalScrollBarEnabled(Z)V

    .line 109
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/WheelView;->views:Landroid/widget/LinearLayout;

    .line 110
    iget-object p1, p0, Lru/rocketbank/core/widgets/WheelView;->views:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 111
    iget-object p1, p0, Lru/rocketbank/core/widgets/WheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/WheelView;->addView(Landroid/view/View;)V

    .line 113
    new-instance p1, Lru/rocketbank/core/widgets/WheelView$1;

    invoke-direct {p1, p0}, Lru/rocketbank/core/widgets/WheelView$1;-><init>(Lru/rocketbank/core/widgets/WheelView;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/WheelView;->scrollerTask:Ljava/lang/Runnable;

    return-void
.end method

.method private initData()V
    .locals 9

    .line 174
    iget v0, p0, Lru/rocketbank/core/widgets/WheelView;->offset:I

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    add-int/2addr v0, v1

    iput v0, p0, Lru/rocketbank/core/widgets/WheelView;->displayItemCount:I

    .line 176
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    iget-object v4, p0, Lru/rocketbank/core/widgets/WheelView;->views:Landroid/widget/LinearLayout;

    .line 1186
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lru/rocketbank/core/widgets/WheelView;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1187
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1188
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v6, 0x2

    const/high16 v7, 0x41800000    # 16.0f

    .line 1189
    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1190
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    .line 1191
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1420
    iget-object v2, p0, Lru/rocketbank/core/widgets/WheelView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x41700000    # 15.0f

    mul-float/2addr v6, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v6, v2

    float-to-int v2, v6

    .line 1193
    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1194
    iget v2, p0, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    if-nez v2, :cond_0

    .line 1425
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const v3, 0x1fffffff

    const/high16 v6, -0x80000000

    .line 1426
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1427
    invoke-virtual {v5, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1428
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1195
    iput v2, p0, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    .line 1196
    sget-object v2, Lru/rocketbank/core/widgets/WheelView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "itemHeight: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v2, p0, Lru/rocketbank/core/widgets/WheelView;->views:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    iget v7, p0, Lru/rocketbank/core/widgets/WheelView;->displayItemCount:I

    mul-int/2addr v6, v7

    invoke-direct {v3, v8, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1199
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v6, p0, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    iget v7, p0, Lru/rocketbank/core/widgets/WheelView;->displayItemCount:I

    mul-int/2addr v6, v7

    invoke-direct {v3, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lru/rocketbank/core/widgets/WheelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    :cond_0
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 180
    :cond_1
    invoke-direct {p0, v3}, Lru/rocketbank/core/widgets/WheelView;->refreshItemView(I)V

    return-void
.end method

.method private refreshItemView(I)V
    .locals 5

    .line 241
    iget v0, p0, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    div-int v0, p1, v0

    iget v1, p0, Lru/rocketbank/core/widgets/WheelView;->offset:I

    add-int/2addr v0, v1

    .line 242
    iget v1, p0, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    rem-int v1, p1, v1

    .line 243
    iget v2, p0, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    div-int/2addr p1, v2

    if-nez v1, :cond_0

    .line 246
    iget v0, p0, Lru/rocketbank/core/widgets/WheelView;->offset:I

    add-int/2addr v0, p1

    goto :goto_0

    .line 248
    :cond_0
    iget v2, p0, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    .line 249
    iget v0, p0, Lru/rocketbank/core/widgets/WheelView;->offset:I

    add-int/2addr p1, v0

    add-int/lit8 v0, p1, 0x1

    .line 278
    :cond_1
    :goto_0
    iget-object p1, p0, Lru/rocketbank/core/widgets/WheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_4

    .line 280
    iget-object v2, p0, Lru/rocketbank/core/widgets/WheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_2

    return-void

    :cond_2
    if-ne v0, v1, :cond_3

    .line 285
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/WheelView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060200

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_3
    const-string v3, "#bbbbbb"

    .line 287
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public fling(I)V
    .locals 0

    .line 397
    div-int/lit8 p1, p1, 0x3

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    return-void
.end method

.method public final getSeletedIndex()I
    .locals 2

    .line 391
    iget v0, p0, Lru/rocketbank/core/widgets/WheelView;->selectedIndex:I

    iget v1, p0, Lru/rocketbank/core/widgets/WheelView;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getSeletedItem()Ljava/lang/String;
    .locals 2

    .line 387
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView;->items:Ljava/util/List;

    iget v1, p0, Lru/rocketbank/core/widgets/WheelView;->selectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 226
    invoke-direct {p0, p2}, Lru/rocketbank/core/widgets/WheelView;->refreshItemView(I)V

    if-le p2, p4, :cond_0

    const/4 p1, 0x1

    .line 230
    iput p1, p0, Lru/rocketbank/core/widgets/WheelView;->scrollDirection:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 233
    iput p1, p0, Lru/rocketbank/core/widgets/WheelView;->scrollDirection:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 358
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 359
    sget-object v0, Lru/rocketbank/core/widgets/WheelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "w: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", oldw: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", oldh: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iput p1, p0, Lru/rocketbank/core/widgets/WheelView;->viewWidth:I

    const/4 p1, 0x0

    .line 361
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/WheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3169
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/WheelView;->getScrollY()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/widgets/WheelView;->initialY:I

    .line 3170
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView;->scrollerTask:Ljava/lang/Runnable;

    iget v1, p0, Lru/rocketbank/core/widgets/WheelView;->newCheck:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lru/rocketbank/core/widgets/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 406
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 322
    iget-object p1, p0, Lru/rocketbank/core/widgets/WheelView;->paint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    .line 323
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/WheelView;->paint:Landroid/graphics/Paint;

    .line 324
    iget-object p1, p0, Lru/rocketbank/core/widgets/WheelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060200

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    iget-object p1, p0, Lru/rocketbank/core/widgets/WheelView;->paint:Landroid/graphics/Paint;

    .line 2420
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    .line 325
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 328
    :cond_0
    new-instance p1, Lru/rocketbank/core/widgets/WheelView$2;

    invoke-direct {p1, p0}, Lru/rocketbank/core/widgets/WheelView$2;-><init>(Lru/rocketbank/core/widgets/WheelView;)V

    .line 352
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView;->items:Ljava/util/List;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/widgets/WheelView;->items:Ljava/util/List;

    .line 70
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    move v0, p1

    .line 75
    :goto_0
    iget v1, p0, Lru/rocketbank/core/widgets/WheelView;->offset:I

    if-ge v0, v1, :cond_1

    .line 76
    iget-object v1, p0, Lru/rocketbank/core/widgets/WheelView;->items:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lru/rocketbank/core/widgets/WheelView;->items:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    invoke-direct {p0}, Lru/rocketbank/core/widgets/WheelView;->initData()V

    return-void
.end method

.method public final setOnWheelViewListener(Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lru/rocketbank/core/widgets/WheelView;->onWheelViewListener:Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;

    return-void
.end method

.method public final setSeletion(I)V
    .locals 1

    .line 376
    iget v0, p0, Lru/rocketbank/core/widgets/WheelView;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lru/rocketbank/core/widgets/WheelView;->selectedIndex:I

    .line 377
    new-instance v0, Lru/rocketbank/core/widgets/WheelView$3;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/core/widgets/WheelView$3;-><init>(Lru/rocketbank/core/widgets/WheelView;I)V

    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/WheelView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
