.class public Landroid/renderscript/Script$FieldBase;
.super Ljava/lang/Object;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldBase"
.end annotation


# instance fields
.field protected mAllocation:Landroid/renderscript/Allocation;

.field protected mElement:Landroid/renderscript/Element;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    return-void
.end method


# virtual methods
.method public getAllocation()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public getElement()Landroid/renderscript/Element;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    return-object v0
.end method

.method public getType()Landroid/renderscript/Type;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    return-object v0
.end method

.method protected init(Landroid/renderscript/RenderScript;I)V
    .locals 2
    .parameter "rs"
    .parameter "dimx"

    .prologue
    .line 359
    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    const/4 v1, 0x1

    invoke-static {p1, v0, p2, v1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 360
    return-void
.end method

.method protected init(Landroid/renderscript/RenderScript;II)V
    .locals 2
    .parameter "rs"
    .parameter "dimx"
    .parameter "usages"

    .prologue
    .line 363
    iget-object v0, p0, Landroid/renderscript/Script$FieldBase;->mElement:Landroid/renderscript/Element;

    or-int/lit8 v1, p3, 0x1

    invoke-static {p1, v0, p2, v1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Script$FieldBase;->mAllocation:Landroid/renderscript/Allocation;

    .line 364
    return-void
.end method

.method public updateAllocation()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method
