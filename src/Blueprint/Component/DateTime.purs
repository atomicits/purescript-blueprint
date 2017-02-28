module Blueprint.Component.DateTime
  ( module T
  , DatePickerProps
  , DateRangePickerProps
  , TimePickerProps
  , DateTimePickerProps
  , DateInputProps
  , datePicker
  , dateRangePicker
  , timePicker
  , dateTimePicker
  , dateInput
  ) where


import Blueprint.Component.DateTime.DateTimeClass (dateInputClass, datePickerClass, dateRangePickerClass, dateTimePickerClass, timePickerClass)
import Blueprint.Component.DateTime.DateTimeType (DatePickerBasePropsEx, DateRange, ShortCuts, TimePickerPrecision, getDatePickerModifier, getDateRange, minutes, seconds, milliseconds) as T
import Blueprint.Event (EventHandler, EventHandler2)
import Blueprint.Type (Position, Prop, PropsEx)
import Data.Date (Date)
import React (ReactElement, createElement)



type DatePickerProps eff = T.DatePickerBasePropsEx
  ( canClearSelection :: Boolean
  , defaultValue :: Date
  , onChange :: EventHandler2 eff Date Boolean
  , showActionsBar :: Boolean
  , value :: Date
  )


datePicker :: forall eff. Prop (DatePickerProps eff) -> ReactElement
datePicker p = createElement datePickerClass p []


type DateRangePickerProps eff = T.DatePickerBasePropsEx
  ( allowSingleDayRange :: Boolean
  , defaultValue :: T.DateRange
  , contiguousCalendarMonths :: Boolean
  , onChange :: EventHandler eff T.DateRange
  , shortcuts :: T.ShortCuts
  , value :: T.DateRange
  )

dateRangePicker :: forall eff. Prop (DateRangePickerProps eff) -> ReactElement
dateRangePicker p = createElement dateRangePickerClass p []


type TimePickerProps eff = PropsEx
  ( defaultValue :: Date
  , onChange :: EventHandler eff Date
  , precision :: T.TimePickerPrecision
  , selectAllOnFocus :: Boolean
  , showArrowButtons :: Boolean
  , value :: Date
  )


timePicker :: forall eff. Prop (TimePickerProps eff) -> ReactElement
timePicker p = createElement timePickerClass p []


type DateTimePickerProps eff = PropsEx
  ( defaultValue :: Date
  , datePickerProps :: (DatePickerProps eff)
  , onChange :: EventHandler2 eff  Date Boolean
  , timePickerProps :: (TimePickerProps eff)
  , value :: Date
  )

dateTimePicker :: forall eff. Prop (DateTimePickerProps eff) -> ReactElement
dateTimePicker p = createElement dateTimePickerClass p []


type DateInputProps  eff = T.DatePickerBasePropsEx
  ( canClearSelection :: Boolean
  , closeOnSelection :: Boolean
  , disabled :: Boolean
  , defaultValue :: Date
  , format :: String
  , invalidDateMessage :: String
  , onChange :: EventHandler eff Date
  , onError :: EventHandler eff Date
  , openOnFocus :: Boolean
  , outOfRangeMessage :: String
  , popoverPosition :: Position
  , value :: Date
  )

dateInput :: forall eff. Prop (DateInputProps eff) -> ReactElement
dateInput p = createElement dateInputClass p []
