/*
 * Copyright (c) 2022 Application Library Engineering Group.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { button } from './button'

export enum CardType {
  Normal,
  Outlined,
  Elevated
}

export enum MediaIconPosition {
  Middle,
  Top,
  Right
}

class Properties {
  private cardType: CardType = CardType.Normal
  private cardBorderWidth: number = 2
  private cardBorderColor: string | Color | ResourceColor = Color.Blue
  private borderRadius: number = 20
  private cardBackgroundColor: string | Color | ResourceColor = Color.White
  private shadowColor: string | Color | ResourceColor = Color.Grey
  private shadowRadius: number = 20

  setCardBorderWidth(cardBorderWidth: number): Properties{
    this.cardBorderWidth = cardBorderWidth
    return this
  }

  getCardBorderWidth(): number{
    return this.cardBorderWidth
  }

  setCardType(cardType: CardType) {
    this.cardType = cardType
    return this
  }

  getCardType(): CardType{
    return this.cardType
  }

  setCardBorderColor(cardBorderColor: string | Resource | Color) {
    this.cardBorderColor = cardBorderColor != null ? cardBorderColor : Color.Blue
    return this
  }

  getCardBorderColor(): string | Resource | Color{
    return this.cardBorderColor
  }

  setBorderRadius(borderRadius: number) {
    this.borderRadius = borderRadius != null ? borderRadius : 20
    return this
  }

  getBorderRadius(): number {
    return this.borderRadius
  }

  setCardBackGroundColor(cardBackgroundColor: string | Resource | Color) {
    this.cardBackgroundColor = cardBackgroundColor != null ? cardBackgroundColor : Color.White
    return this
  }

  getCardBackgroundColor(): string | Resource | Color{
    return this.cardBackgroundColor
  }

  setShadowColor(shadowColor: string | Resource | Color) {
    this.shadowColor = shadowColor != null ? shadowColor : Color.Grey
    return this
  }

  getShadowColor() {
    return this.shadowColor
  }

  setShadowRadius(shadowRadius: number) {
    this.shadowRadius = shadowRadius != null ? shadowRadius : 25
    return this
  }

  getShadowRadius(): number{
    return this.shadowRadius
  }
}

export class CardModel extends Properties {
  private title: string | Resource = ""
  private titleFontSize: number = 25
  private titleFontColor: string | Resource | Color = Color.Black
  private titleFontWeight: FontWeight = FontWeight.Bold

  private subTitle: string | Resource = ""
  private subTitleFontSize: number = 15
  private subTitleFontColor: string | Resource | Color = Color.Black
  private subTitleFontWeight: FontWeight = FontWeight.Normal

  private cardHeight: number = 540
  private cardWidth: number = 300

  private leadingIcon: string | Resource = undefined
  private leadingIconWidth: number = 64
  private leadingIconHeight: number = 64

  private mediaIconPosition: MediaIconPosition = MediaIconPosition.Middle
  private mediaIcon: string | Resource = undefined
  private mediaIconWidth: number = 300
  private mediaIconHeight: number = 144

  private supportingText: string | Resource = ""
  private supportingTextFontSize: number = 15
  private supportingTextFontColor: string | Resource | Color = Color.Black
  private supportingTextFontWeight: FontWeight = FontWeight.Medium

  private showDivider: boolean = false

  private buttonHeader: string | Resource = ""
  private buttons: button.Model [] = []

  private actions: button.Model [] = []

  private buttonClick: (button: button.Model) => void = undefined
  private actionClick: (action: button.Model) => void = undefined
  private cardClick: () => void = undefined

  setSupportingTextFontSize(supportingTextFontSize: number): CardModel{
    this.supportingTextFontSize = supportingTextFontSize
    return this
  }

  getSupportingTextFontSize(): number {
    return this.supportingTextFontSize
  }
  setSupportingTextFontColor(supportingTextFontColor: string | Resource | Color): CardModel{
    this.supportingTextFontColor = supportingTextFontColor
    return this
  }

  getSupportingTextFontColor(): string | Resource | Color {
    return this.supportingTextFontColor
  }
  setSupportingTextFontWeight(supportingTextFontWeight: FontWeight): CardModel{
    this.supportingTextFontWeight = supportingTextFontWeight
    return this
  }

  getSupportingTextFontWeight(): FontWeight{
    return this.supportingTextFontWeight
  }

  setCardClick(callBack: () => void) {
    this.cardClick = callBack
    return this
  }

  getCardClick(): () => void {
    return this.cardClick
  }

  setButtonClick(callBack: (button: button.Model) => void) {
    this.buttonClick = callBack
    return this
  }

  getButtonClick(): (button: button.Model) => void{
    return this.buttonClick
  }

  setActionClick(callBack: (action: button.Model) => void) {
    this.actionClick = callBack
    return this
  }

  getActionClick(): (action: button.Model) => void{
    return this.actionClick
  }

  constructor(title: string | Resource, subTitle: string | Resource) {
    super()
    this.title = title
    this.subTitle = subTitle
  }

  getTitle(): string | Resource{
    return this.title
  }

  setTitleFontSize(titleFontSize: number) {
    this.titleFontSize = titleFontSize
    return this
  }

  getTitleFontSize(): number{
    return this.titleFontSize
  }

  setTitleFontColor(titleFontColor: string | Resource | Color) {
    this.titleFontColor = titleFontColor
    return this
  }

  getTitleFontColor(): string | Resource | Color{
    return this.titleFontColor
  }

  setTitleFontWeight(titleFontWeight: FontWeight) {
    this.titleFontWeight = titleFontWeight
    return this
  }

  getTitleFontWeight(): FontWeight {
    return this.titleFontWeight
  }

  getSubTitle(): string | Resource{
    return this.subTitle
  }

  setSubTitleFontSize(subTitleFontSize: number) {
    this.subTitleFontSize = subTitleFontSize
    return this
  }

  getSubTitleFontSize(): number{
    return this.subTitleFontSize
  }

  setSubTitleFontColor(subTitleFontColor: string | Resource | Color) {
    this.subTitleFontColor = subTitleFontColor
    return this
  }

  getSubTitleFontColor(): string | Resource | Color{
    return this.subTitleFontColor
  }

  setSubTitleFontWeight(subTitleFontWeight: FontWeight) {
    this.subTitleFontWeight = subTitleFontWeight
    return this
  }

  getSubTitleFontWeight(): FontWeight {
    return this.subTitleFontWeight
  }

  setCardHeight(cardHeight: number) {
    this.cardHeight = cardHeight != null ? cardHeight : 540
    return this
  }

  getCardHeight(): number{
    return this.cardHeight
  }

  setCardWidth(cardWidth: number) {
    this.cardWidth = cardWidth != null ? cardWidth : 300
    return this
  }

  getCardWidth(): number{
    return this.cardWidth
  }

  setLeadingIcon(leadingIcon: string | Resource): CardModel{
    this.leadingIcon = leadingIcon != null ? leadingIcon : undefined
    return this
  }

  getLeadingIcon(): string | Resource {
    return this.leadingIcon
  }

  setLeadingIconWidth(leadingIconWidth: number): CardModel{
    this.leadingIconWidth = leadingIconWidth != null ? leadingIconWidth : 64
    return this
  }

  getLeadingIconWidth(): number{
    return this.leadingIconWidth
  }

  setLeadingIconHeight(leadingIconHeight: number): CardModel{
    this.leadingIconHeight = leadingIconHeight != null ? leadingIconHeight : 64
    return this
  }

  getLeadingIconHeight(): number{
    return this.leadingIconHeight
  }

  setMediaIcon(mediaIcon: string | Resource): CardModel{
    this.mediaIcon = (mediaIcon == null ? undefined : mediaIcon)
    return this
  }

  setMediaIconPosition(mediaIconPosition: MediaIconPosition) {
    this.mediaIconPosition = mediaIconPosition != null ? mediaIconPosition : MediaIconPosition.Middle
  }

  getMediaIconPosition(): MediaIconPosition{
    return this.mediaIconPosition
  }

  getMediaIcon(): string | Resource{
    return this.mediaIcon
  }

  setMediaIconWidth(mediaIconWidth: number): CardModel{
    this.mediaIconWidth = mediaIconWidth != null ? mediaIconWidth : this.cardWidth
    return this
  }

  getMediaIconWidth(): number{
    return this.mediaIconWidth
  }

  setMediaIconHeight(mediaIconHeight: number): CardModel{
    this.mediaIconHeight = mediaIconHeight != null ? mediaIconHeight : 120
    return this
  }

  getMediaIconHeight(): number{
    return this.mediaIconHeight
  }

  setSupportingText(supportingText: string | Resource): CardModel{
    this.supportingText = supportingText
    return this
  }

  getSupportingText(): string | Resource{
    return this.supportingText
  }

  setShowDivider(showDivider: boolean): CardModel{
    this.showDivider = showDivider != null ?? showDivider;
    false
    return this
  }

  getShowDivider(): boolean{
    return this.showDivider
  }

  setButtonHeader(buttonHeader: string | Resource): CardModel{
    this.buttonHeader = buttonHeader != null ? buttonHeader : ""
    return this
  }

  getButtonHeader(): string | Resource{
    return this.buttonHeader
  }

  setButtons(buttons: button.Model[]): CardModel{
    this.buttons = buttons
    return this
  }

  getButtons(): button.Model[]{
    return this.buttons
  }

  setActions(actions: button.Model[]): CardModel{
    this.actions = actions
    return this
  }

  getActions(): button.Model[]{
    return this.actions
  }

  reset() : CardModel {
    this.setCardType(CardType.Normal)
    this.setCardBorderWidth(2)
    this.setCardBorderColor(Color.Blue)
    this.setBorderRadius(20)
    this.setCardBackGroundColor(Color.White)
    this.setShadowColor(Color.Grey)
    this.setShadowRadius(20)

    this.title = ""
    this.titleFontSize = 25
    this.titleFontColor = Color.Black
    this.titleFontWeight = FontWeight.Bold

    this.subTitle = ""
    this.subTitleFontSize = 15
    this.subTitleFontColor = Color.Black
    this.subTitleFontWeight = FontWeight.Normal

    this.cardHeight = 540
    this.cardWidth = 300

    this.leadingIcon = undefined
    this.leadingIconWidth = 64
    this.leadingIconHeight = 64

    this.mediaIconPosition = MediaIconPosition.Middle
    this.mediaIcon = undefined
    this.mediaIconWidth = 300
    this.mediaIconHeight = 144

    this.supportingText = ""

    this.showDivider = false

    this.buttonHeader = ""
    this.buttons = []

    this.actions = []

    this.buttonClick = undefined
    this.actionClick = undefined
    this.cardClick = undefined
    return this
  }
}
