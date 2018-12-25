.class public Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;
.super Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;
.source "SpinnerControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SpinnerControl"


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem;",
            ">;"
        }
    .end annotation
.end field

.field private selectedItemId:Ljava/lang/String;

.field private sheetUpdatedListener$6dd8b804:Landroid/arch/lifecycle/GeneratedAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;-><init>(Landroid/os/Parcel;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->items:Ljava/util/List;

    .line 101
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->items:Ljava/util/List;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->selectedItemId:Ljava/lang/String;

    .line 104
    sget-object p1, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;->SPINNER:Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->setControltype(Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItemType;)V
    .locals 1

    .line 76
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;->SPINNER:Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl$Controltype;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->items:Ljava/util/List;

    .line 78
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->setControlId(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 80
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "SpinnerControl : You must set title."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItemType;->SHIPPING_METHOD_SPINNER:Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItemType;

    if-eq p3, p1, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItemType;->INSTALLMENT_SPINNER:Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItemType;

    if-eq p3, p1, :cond_1

    .line 82
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SpinnerControl : sheetItemType must be either SHIPPING_METHOD_SPINNER or INSTALLMENT_SPINNER."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;

    invoke-direct {p1}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;->setId(Ljava/lang/String;)Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;->setSheetItemType(Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItemType;)Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;

    move-result-object p1

    .line 1293
    new-instance p2, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$1;)V

    .line 92
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->items:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getIndex(ILjava/lang/String;)I
    .locals 1

    .line 391
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public addItem(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 285
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->existItem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addItem : same ID is used."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p3, :cond_1

    .line 288
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "addItem : You must set value."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ltz p1, :cond_3

    .line 289
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    goto :goto_0

    .line 293
    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;->setId(Ljava/lang/String;)Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;->setSValue(Ljava/lang/String;)Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;

    move-result-object p2

    .line 3293
    new-instance p3, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem;

    const/4 v0, 0x0

    invoke-direct {p3, p2, v0}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$1;)V

    .line 299
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->items:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p2, p1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    .line 290
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addItem : location is abnormal."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->addItem(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public existItem(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 380
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "existItem : You must set ID."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x1

    .line 383
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->getIndex(ILjava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->items:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItemId()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->selectedItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getSheetUpdatedListener$2cab37bd()Landroid/arch/lifecycle/GeneratedAdapter;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->sheetUpdatedListener$6dd8b804:Landroid/arch/lifecycle/GeneratedAdapter;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->items:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeItem(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 319
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "removeItem : You must set id."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x1

    .line 320
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->getIndex(ILjava/lang/String;)I

    move-result p1

    if-gez p1, :cond_1

    .line 321
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "removeItem : There is no item associated with the ID."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public setSelectedItemId(Ljava/lang/String;)V
    .locals 1

    .line 226
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->existItem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "setSelectedItemId : There is no item associated with the ID."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->selectedItemId:Ljava/lang/String;

    return-void
.end method

.method public setSheetUpdatedListener$3a46fd8f(Landroid/arch/lifecycle/GeneratedAdapter;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->sheetUpdatedListener$6dd8b804:Landroid/arch/lifecycle/GeneratedAdapter;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 191
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "setTitle : You must set spinner title"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;->setId(Ljava/lang/String;)Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->items:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem;->getSheetItemType()Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItemType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;->setSheetItemType(Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItemType;)Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;

    move-result-object p1

    .line 2293
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$1;)V

    .line 199
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->items:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 345
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "updateItem : You must set ID."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    .line 347
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "addItem : You must set value."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x1

    .line 350
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->getIndex(ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 352
    new-instance v1, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;->setId(Ljava/lang/String;)Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;->setSValue(Ljava/lang/String;)Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;

    move-result-object p1

    .line 4293
    new-instance p2, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem;-><init>(Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$Builder;Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetItem$1;)V

    .line 357
    iget-object p1, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->items:Ljava/util/List;

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 361
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "updateItem : There is no item associated with the ID."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SheetControl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 113
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->items:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 114
    iget-object p2, p0, Lcom/samsung/android/sdk/samsungpay/v2/payment/sheet/SpinnerControl;->selectedItemId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
