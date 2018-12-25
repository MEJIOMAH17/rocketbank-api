.class public final Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "MapViewHolder.kt"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;
.implements Lru/rocketbank/r2d2/root/operation/vh/MapHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapViewHolder.kt\nru/rocketbank/r2d2/root/operation/vh/MapViewHolder\n*L\n1#1,210:1\n*E\n"
.end annotation


# instance fields
.field private final adapterData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private final mapView:Lcom/google/android/gms/maps/MapView;

.field private operation:Lru/rocketbank/core/model/dto/operations/Operation;

.field private pinBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/view/View;Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->adapterData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    .line 60
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;

    move-result-object p1

    const-string p2, "binding"

    .line 61
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p2, p0

    check-cast p2, Lru/rocketbank/r2d2/root/operation/vh/MapHandler;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->setHandler(Lru/rocketbank/r2d2/root/operation/vh/MapHandler;)V

    .line 63
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;->map:Lcom/google/android/gms/maps/MapView;

    const-string p2, "binding.map"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 64
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->mapView:Lcom/google/android/gms/maps/MapView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic access$getOperation$p(Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;)Lru/rocketbank/core/model/dto/operations/Operation;
    .locals 0

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-object p0
.end method

.method public static final synthetic access$getPinBitmap$p(Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;)Landroid/graphics/Bitmap;
    .locals 0

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->pinBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static final synthetic access$setOperation$p(Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-void
.end method

.method public static final synthetic access$setPinBitmap$p(Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->pinBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic access$showLocation(Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;Lru/rocketbank/core/model/dto/operations/Location;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->showLocation(Lru/rocketbank/core/model/dto/operations/Location;)V

    return-void
.end method

.method private final loadImageIntoPin(Ljava/lang/String;)V
    .locals 6

    .line 136
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    .line 138
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "context.resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 139
    iget-object v3, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801f5

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_2

    .line 141
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07015d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 151
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 152
    invoke-virtual {v4, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lcom/bumptech/glide/BitmapTypeRequest;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    .line 155
    invoke-virtual {p1, v3, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->override(II)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    new-array v2, v2, [Lcom/bumptech/glide/load/Transformation;

    .line 156
    new-instance v3, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-direct {v3, v0}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    check-cast v3, Lcom/bumptech/glide/load/Transformation;

    aput-object v3, v2, v5

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    .line 157
    new-instance v0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$loadImageIntoPin$3;

    invoke-direct {v0, p0, v1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$loadImageIntoPin$3;-><init>(Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;F)V

    check-cast v0, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x0

    if-eqz v3, :cond_3

    .line 143
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_4

    .line 144
    invoke-virtual {p0, v0, v1, v1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->createPin(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_4
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->pinBitmap:Landroid/graphics/Bitmap;

    .line 145
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getLocation()Lru/rocketbank/core/model/dto/operations/Location;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 146
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->showLocation(Lru/rocketbank/core/model/dto/operations/Location;)V

    :cond_5
    return-void
.end method

.method private final onBindOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 0

    .line 77
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getLocation()Lru/rocketbank/core/model/dto/operations/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->showLocation(Lru/rocketbank/core/model/dto/operations/Location;)V

    :cond_0
    return-void
.end method

.method private final setupHeaderImage(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 2

    .line 119
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getFriend()Lru/rocketbank/core/model/dto/operations/Friend;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Friend;->getUserpicUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->loadImageIntoPin(Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    invoke-direct {p0, v1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->loadImageIntoPin(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    .line 129
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-direct {p0, v1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->loadImageIntoPin(Ljava/lang/String;)V

    return-void

    .line 131
    :cond_4
    invoke-direct {p0, v1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->loadImageIntoPin(Ljava/lang/String;)V

    return-void
.end method

.method private final showLocation(Lru/rocketbank/core/model/dto/operations/Location;)V
    .locals 7

    .line 97
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->adapterData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getZoomLevel()F

    move-result v0

    .line 98
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_5

    .line 100
    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 102
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Location;->getLatitude()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Location;->getLongitude()Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 104
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->pinBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    .line 105
    invoke-static {p1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    const p1, 0x7f0801f5

    .line 106
    invoke-static {p1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p1

    const-string v3, "BitmapDescriptorFactory.\u2026.drawable.pin_categories)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    :cond_3
    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 109
    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    .line 110
    invoke-virtual {v3, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 111
    iget-object v3, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lru/rocketbank/core/model/dto/operations/Operation;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lru/rocketbank/core/model/dto/operations/Merchant;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 113
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 114
    invoke-static {v2, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void

    :cond_5
    return-void
.end method

.method private final subscribeLocation()Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Subscriber<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$subscribeLocation$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder$subscribeLocation$1;-><init>(Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;)V

    check-cast v0, Lrx/Subscriber;

    return-object v0
.end method


# virtual methods
.method public final createPin(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "bitmapSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 172
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801f5

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    .line 173
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "pinBitmap"

    .line 174
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 175
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 180
    iget-object v4, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->itemView:Landroid/view/View;

    const-string v5, "itemView"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "itemView.context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07015d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 182
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    .line 183
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v7, p1, v8, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v7, Landroid/graphics/Shader;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 186
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v7, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 188
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    invoke-virtual {v6, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 190
    new-instance p1, Landroid/graphics/RectF;

    int-to-float p2, v2

    int-to-float p3, v3

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float p2, v4

    invoke-virtual {v6, p1, p2, p2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 192
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "mutableBitmap.copy(Bitmap.Config.ARGB_8888, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getAdapterData()Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;
    .locals 1

    .line 27
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->adapterData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    return-object v0
.end method

.method public final onBind(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 2

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->mapView:Lcom/google/android/gms/maps/MapView;

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/maps/OnMapReadyCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 72
    :cond_0
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    .line 73
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->onBindOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void
.end method

.method public final onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 3

    const-string v0, "googleMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    const-string v1, "googleMap.uiSettings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setMapToolbarEnabled(Z)V

    .line 86
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    const-string v2, "googleMap.uiSettings"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 87
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    const-string v2, "googleMap.uiSettings"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setIndoorLevelPickerEnabled(Z)V

    .line 88
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 90
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz p1, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->onBindOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void

    :cond_0
    return-void
.end method

.method public final onZoomChanged()V
    .locals 8

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_4

    .line 47
    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v1, :cond_3

    .line 48
    iget-object v2, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->adapterData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getZoomLevel()F

    move-result v2

    .line 50
    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Operation;->getLocation()Lru/rocketbank/core/model/dto/operations/Location;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 52
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Location;->getLatitude()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Location;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 53
    invoke-static {v3, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_2
    return-void

    :cond_3
    return-void

    :cond_4
    return-void
.end method

.method public final onZoomIn()V
    .locals 3

    .line 35
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->adapterData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getZoomLevel()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->setZoomLevel(F)V

    .line 36
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->onZoomChanged()V

    return-void
.end method

.method public final onZoomOut()V
    .locals 3

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->adapterData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getZoomLevel()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->setZoomLevel(F)V

    .line 41
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->onZoomChanged()V

    return-void
.end method
