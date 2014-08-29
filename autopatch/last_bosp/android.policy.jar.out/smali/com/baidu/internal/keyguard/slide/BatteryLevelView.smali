.class public Lcom/baidu/internal/keyguard/slide/BatteryLevelView;
.super Landroid/widget/ImageView;
.source "BatteryLevelView.java"


# instance fields
.field private final COLOR_CRITICAL:I

.field private final COLOR_LOW:I

.field private final COLOR_NORMAL:I

.field private mLevel:F

.field private mOffsetR:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mShow:Z

.field private strokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/16 v2, 0xf7

    const/16 v1, 0x25

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mLevel:F

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mPaint:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mRectF:Landroid/graphics/RectF;

    .line 17
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mOffsetR:I

    .line 18
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->COLOR_CRITICAL:I

    .line 19
    const/16 v0, 0x88

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->COLOR_LOW:I

    .line 20
    const/16 v0, 0x7f

    const/16 v1, 0xf5

    const/16 v2, 0x28

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->COLOR_NORMAL:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mShow:Z

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->strokeWidth:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v2, 0xf7

    const/16 v1, 0x25

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mLevel:F

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mPaint:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mRectF:Landroid/graphics/RectF;

    .line 17
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mOffsetR:I

    .line 18
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->COLOR_CRITICAL:I

    .line 19
    const/16 v0, 0x88

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->COLOR_LOW:I

    .line 20
    const/16 v0, 0x7f

    const/16 v1, 0xf5

    const/16 v2, 0x28

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->COLOR_NORMAL:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mShow:Z

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->strokeWidth:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v2, 0xf7

    const/16 v1, 0x25

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mLevel:F

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mPaint:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mRectF:Landroid/graphics/RectF;

    .line 17
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mOffsetR:I

    .line 18
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->COLOR_CRITICAL:I

    .line 19
    const/16 v0, 0x88

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->COLOR_LOW:I

    .line 20
    const/16 v0, 0x7f

    const/16 v1, 0xf5

    const/16 v2, 0x28

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->COLOR_NORMAL:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mShow:Z

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->strokeWidth:I

    .line 34
    return-void
.end method

.method private dip2px(F)I
    .locals 3
    .parameter "dpValue"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 52
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private px2dip(F)I
    .locals 3
    .parameter "pxValue"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 57
    .local v0, scale:F
    div-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mShow:Z

    .line 42
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->invalidate()V

    .line 43
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mShow:Z

    if-eqz v0, :cond_0

    .line 64
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mLevel:F

    const/high16 v1, 0x41c8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->COLOR_NORMAL:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->strokeWidth:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mOffsetR:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->dip2px(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mOffsetR:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->dip2px(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mOffsetR:I

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->dip2px(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mOffsetR:I

    int-to-float v5, v5

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->dip2px(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 76
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mRectF:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c

    iget v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mLevel:F

    const v3, 0x40666666

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 77
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    :cond_0
    return-void

    .line 66
    :cond_1
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mLevel:F

    const/high16 v1, 0x4120

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->COLOR_LOW:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->COLOR_CRITICAL:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setLevel(F)V
    .locals 0
    .parameter "level"

    .prologue
    .line 37
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mLevel:F

    .line 38
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->mShow:Z

    .line 47
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->invalidate()V

    .line 48
    return-void
.end method
